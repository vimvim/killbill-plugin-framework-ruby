###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'com.ning.billing.catalog.api'
      class StaticCatalog

        include com.ning.billing.catalog.api.StaticCatalog

        attr_accessor :catalog_name, :effective_date, :current_supported_currencies, :current_products, :current_units, :current_plans, :available_base_plan_listings, :available_addon_listings

        def initialize()
        end

        def to_java()
          # conversion for catalog_name [type = java.lang.String]
          @catalog_name = @catalog_name.to_s unless @catalog_name.nil?

          # conversion for effective_date [type = java.util.Date]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
            @effective_date = @effective_date.to_date
          end

          # conversion for current_supported_currencies [type = com.ning.billing.catalog.api.Currency]
          @current_supported_currencies = Java::com.ning.billing.catalog.api.Currency.value_of("#{@current_supported_currencies.to_s}") unless @current_supported_currencies.nil?

          # conversion for current_products [type = com.ning.billing.catalog.api.Product]
          @current_products = @current_products.to_java unless @current_products.nil?

          # conversion for current_units [type = com.ning.billing.catalog.api.Unit]
          @current_units = @current_units.to_java unless @current_units.nil?

          # conversion for current_plans [type = com.ning.billing.catalog.api.Plan]
          @current_plans = @current_plans.to_java unless @current_plans.nil?

          # conversion for available_base_plan_listings [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@available_base_plan_listings || []).each do |m|
            # conversion for m [type = com.ning.billing.catalog.api.Listing]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @available_base_plan_listings = tmp

          # conversion for available_addon_listings [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@available_addon_listings || []).each do |m|
            # conversion for m [type = com.ning.billing.catalog.api.Listing]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @available_addon_listings = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for catalog_name [type = java.lang.String]
          @catalog_name = j_obj.catalog_name

          # conversion for effective_date [type = java.util.Date]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date)
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for current_supported_currencies [type = com.ning.billing.catalog.api.Currency]
          @current_supported_currencies = j_obj.current_supported_currencies
          @current_supported_currencies = @current_supported_currencies.to_s.to_sym unless @current_supported_currencies.nil?

          # conversion for current_products [type = com.ning.billing.catalog.api.Product]
          @current_products = j_obj.current_products
          @current_products = Killbill::Plugin::Model::Product.new.to_ruby(@current_products) unless @current_products.nil?

          # conversion for current_units [type = com.ning.billing.catalog.api.Unit]
          @current_units = j_obj.current_units
          @current_units = Killbill::Plugin::Model::Unit.new.to_ruby(@current_units) unless @current_units.nil?

          # conversion for current_plans [type = com.ning.billing.catalog.api.Plan]
          @current_plans = j_obj.current_plans
          @current_plans = Killbill::Plugin::Model::Plan.new.to_ruby(@current_plans) unless @current_plans.nil?

          # conversion for available_base_plan_listings [type = java.util.List]
          @available_base_plan_listings = j_obj.available_base_plan_listings
          tmp = []
          (@available_base_plan_listings || []).each do |m|
            # conversion for m [type = com.ning.billing.catalog.api.Listing]
            m = Killbill::Plugin::Model::Listing.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @available_base_plan_listings = tmp

          # conversion for available_addon_listings [type = java.util.List]
          @available_addon_listings = j_obj.available_addon_listings
          tmp = []
          (@available_addon_listings || []).each do |m|
            # conversion for m [type = com.ning.billing.catalog.api.Listing]
            m = Killbill::Plugin::Model::Listing.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @available_addon_listings = tmp
          self
        end

      end
    end
  end
end
