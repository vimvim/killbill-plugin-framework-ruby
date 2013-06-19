require 'date'

module Killbill
  module Plugin

    #
    # Represents a subset of the Killbill Apis offered to the ruby plugins
    #
    class KillbillApi

      def initialize(plugin_name, java_service_map)
        @plugin_name = plugin_name
        @services = {}
        puts "STEPH :::::::::::::::::  #{java_service_map.inspect}"
        java_service_map.each do |k,v|
          @services[k.to_sym] = create_proxy_api(k, v)
        end
      end

      #
      # Returns the proxy to the java api
      #
      def method_missing(m, *args, &block)

        puts "Looking for api #{m}"

        return @services[m.to_sym] if @services.include? m.to_sym
        raise NoMethodError.new("undefined method `#{m}' for #{self}")
      end


      def create_context(tenant_id=nil, user_token=nil, reason_code=nil, comments=nil)
        context = Killbill::Plugin::Model::CallContext.new
        context.tenant_id= tenant_id
        context.user_token= user_token
        context.user_name= @plugin_name
        context.call_origin= :EXTERNAL
        context.user_type= :SYSTEM
        context.reason_code= reason_code
        context.comments= comments
        context.created_date= DateTime.new
        context.updated_date= DateTime.new
        context
      end

      private

      def create_proxy_api(api_name, java_api)
        if api_name == "overdue_user_api"
          return nil
        end

        puts "create_proxy_api #{api_name} #{java_api.inspect}"

        proxy_class_name = "Killbill::Plugin::Api::#{api_name.to_s.split('_').map{|e| e.capitalize}.join}"
        proxy_class_name.to_class.new(java_api)
      end

    end
  end
end
