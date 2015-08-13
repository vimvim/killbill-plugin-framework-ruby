#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


require 'killbill/gen/plugin-api/notification_plugin_api'
module Killbill
  module Plugin
    module Api

      java_package 'org.killbill.billing.entitlement.plugin.api'
      class EntitlementPluginApi < NotificationPluginApi

        include org.killbill.billing.entitlement.plugin.api.EntitlementPluginApi

        def initialize(real_class_name, services = {})
          super(real_class_name, services)
        end


        java_signature 'Java::org.killbill.billing.entitlement.plugin.api.PriorEntitlementResult priorCall(Java::org.killbill.billing.entitlement.plugin.api.EntitlementContext, Java::java.lang.Iterable)'
        def prior_call(context, properties)

          # conversion for context [type = org.killbill.billing.entitlement.plugin.api.EntitlementContext]
          context = Killbill::Plugin::Model::EntitlementContext.new.to_ruby(context) unless context.nil?

          # conversion for properties [type = java.lang.Iterable]
          tmp = []
          (properties.nil? ? [] : properties.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          properties = tmp
          begin
            res = @delegate_plugin.prior_call(context, properties)
            # conversion for res [type = org.killbill.billing.entitlement.plugin.api.PriorEntitlementResult]
            res = res.to_java unless res.nil?
            return res
          rescue Exception => e
            message = "Failure in prior_call: #{e}"
            unless e.backtrace.nil?
              message = "#{message}\n#{e.backtrace.join("\n")}"
            end
            logger.warn message
            raise Java::org.killbill.billing.payment.plugin.api.PaymentPluginApiException.new("prior_call failure", e.message)
          ensure
            @delegate_plugin.after_request
          end
        end

        java_signature 'Java::org.killbill.billing.entitlement.plugin.api.OnSuccessEntitlementResult onSuccessCall(Java::org.killbill.billing.entitlement.plugin.api.EntitlementContext, Java::java.lang.Iterable)'
        def on_success_call(context, properties)

          # conversion for context [type = org.killbill.billing.entitlement.plugin.api.EntitlementContext]
          context = Killbill::Plugin::Model::EntitlementContext.new.to_ruby(context) unless context.nil?

          # conversion for properties [type = java.lang.Iterable]
          tmp = []
          (properties.nil? ? [] : properties.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          properties = tmp
          begin
            res = @delegate_plugin.on_success_call(context, properties)
            # conversion for res [type = org.killbill.billing.entitlement.plugin.api.OnSuccessEntitlementResult]
            res = res.to_java unless res.nil?
            return res
          rescue Exception => e
            message = "Failure in on_success_call: #{e}"
            unless e.backtrace.nil?
              message = "#{message}\n#{e.backtrace.join("\n")}"
            end
            logger.warn message
            raise Java::org.killbill.billing.payment.plugin.api.PaymentPluginApiException.new("on_success_call failure", e.message)
          ensure
            @delegate_plugin.after_request
          end
        end

        java_signature 'Java::org.killbill.billing.entitlement.plugin.api.OnFailureEntitlementResult onFailureCall(Java::org.killbill.billing.entitlement.plugin.api.EntitlementContext, Java::java.lang.Iterable)'
        def on_failure_call(context, properties)

          # conversion for context [type = org.killbill.billing.entitlement.plugin.api.EntitlementContext]
          context = Killbill::Plugin::Model::EntitlementContext.new.to_ruby(context) unless context.nil?

          # conversion for properties [type = java.lang.Iterable]
          tmp = []
          (properties.nil? ? [] : properties.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          properties = tmp
          begin
            res = @delegate_plugin.on_failure_call(context, properties)
            # conversion for res [type = org.killbill.billing.entitlement.plugin.api.OnFailureEntitlementResult]
            res = res.to_java unless res.nil?
            return res
          rescue Exception => e
            message = "Failure in on_failure_call: #{e}"
            unless e.backtrace.nil?
              message = "#{message}\n#{e.backtrace.join("\n")}"
            end
            logger.warn message
            raise Java::org.killbill.billing.payment.plugin.api.PaymentPluginApiException.new("on_failure_call failure", e.message)
          ensure
            @delegate_plugin.after_request
          end
        end
      end
    end
  end
end
