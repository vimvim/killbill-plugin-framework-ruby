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


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.account.api'
      class MutableAccountData

        include org.killbill.billing.account.api.MutableAccountData

        attr_accessor :external_key, :name, :first_name_length, :email, :bill_cycle_day_local, :currency, :payment_method_id, :time_zone, :locale, :address1, :address2, :company_name, :city, :state_or_province, :postal_code, :country, :phone, :is_migrated, :is_notified_for_invoices, :parent_account_id, :is_payment_delegated_to_parent

        def initialize()
        end

        def to_java()
          # conversion for external_key [type = java.lang.String]
          @external_key = @external_key.to_s unless @external_key.nil?

          # conversion for name [type = java.lang.String]
          @name = @name.to_s unless @name.nil?

          # conversion for first_name_length [type = java.lang.Integer]
          @first_name_length = @first_name_length

          # conversion for email [type = java.lang.String]
          @email = @email.to_s unless @email.nil?

          # conversion for bill_cycle_day_local [type = java.lang.Integer]
          @bill_cycle_day_local = @bill_cycle_day_local

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of( @currency.to_s ) unless @currency.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          @payment_method_id = java.util.UUID.fromString(@payment_method_id.to_s) unless @payment_method_id.nil?

          # conversion for time_zone [type = org.joda.time.DateTimeZone]
          if !@time_zone.nil?
            @time_zone = Java::org.joda.time.DateTimeZone.forID((@time_zone.respond_to?(:identifier) ? @time_zone.identifier : @time_zone.to_s))
          end

          # conversion for locale [type = java.lang.String]
          @locale = @locale.to_s unless @locale.nil?

          # conversion for address1 [type = java.lang.String]
          @address1 = @address1.to_s unless @address1.nil?

          # conversion for address2 [type = java.lang.String]
          @address2 = @address2.to_s unless @address2.nil?

          # conversion for company_name [type = java.lang.String]
          @company_name = @company_name.to_s unless @company_name.nil?

          # conversion for city [type = java.lang.String]
          @city = @city.to_s unless @city.nil?

          # conversion for state_or_province [type = java.lang.String]
          @state_or_province = @state_or_province.to_s unless @state_or_province.nil?

          # conversion for postal_code [type = java.lang.String]
          @postal_code = @postal_code.to_s unless @postal_code.nil?

          # conversion for country [type = java.lang.String]
          @country = @country.to_s unless @country.nil?

          # conversion for phone [type = java.lang.String]
          @phone = @phone.to_s unless @phone.nil?

          # conversion for is_migrated [type = java.lang.Boolean]
          @is_migrated = @is_migrated.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_migrated)

          # conversion for is_notified_for_invoices [type = java.lang.Boolean]
          @is_notified_for_invoices = @is_notified_for_invoices.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_notified_for_invoices)

          # conversion for parent_account_id [type = java.util.UUID]
          @parent_account_id = java.util.UUID.fromString(@parent_account_id.to_s) unless @parent_account_id.nil?

          # conversion for is_payment_delegated_to_parent [type = java.lang.Boolean]
          @is_payment_delegated_to_parent = @is_payment_delegated_to_parent.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_payment_delegated_to_parent)
          self
        end

        def to_ruby(j_obj)
          # conversion for external_key [type = java.lang.String]
          @external_key = j_obj.external_key

          # conversion for name [type = java.lang.String]
          @name = j_obj.name

          # conversion for first_name_length [type = java.lang.Integer]
          @first_name_length = j_obj.first_name_length

          # conversion for email [type = java.lang.String]
          @email = j_obj.email

          # conversion for bill_cycle_day_local [type = java.lang.Integer]
          @bill_cycle_day_local = j_obj.bill_cycle_day_local

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          @payment_method_id = j_obj.payment_method_id
          @payment_method_id = @payment_method_id.nil? ? nil : @payment_method_id.to_s

          # conversion for time_zone [type = org.joda.time.DateTimeZone]
          @time_zone = j_obj.time_zone
          if !@time_zone.nil?
            @time_zone = TZInfo::Timezone.get(@time_zone.get_id)
          end

          # conversion for locale [type = java.lang.String]
          @locale = j_obj.locale

          # conversion for address1 [type = java.lang.String]
          @address1 = j_obj.address1

          # conversion for address2 [type = java.lang.String]
          @address2 = j_obj.address2

          # conversion for company_name [type = java.lang.String]
          @company_name = j_obj.company_name

          # conversion for city [type = java.lang.String]
          @city = j_obj.city

          # conversion for state_or_province [type = java.lang.String]
          @state_or_province = j_obj.state_or_province

          # conversion for postal_code [type = java.lang.String]
          @postal_code = j_obj.postal_code

          # conversion for country [type = java.lang.String]
          @country = j_obj.country

          # conversion for phone [type = java.lang.String]
          @phone = j_obj.phone

          # conversion for is_migrated [type = java.lang.Boolean]
          @is_migrated = j_obj.is_migrated
          if @is_migrated.nil?
            @is_migrated = false
          else
            tmp_bool = (@is_migrated.java_kind_of? java.lang.Boolean) ? @is_migrated.boolean_value : @is_migrated
            @is_migrated = tmp_bool ? true : false
          end

          # conversion for is_notified_for_invoices [type = java.lang.Boolean]
          @is_notified_for_invoices = j_obj.is_notified_for_invoices
          if @is_notified_for_invoices.nil?
            @is_notified_for_invoices = false
          else
            tmp_bool = (@is_notified_for_invoices.java_kind_of? java.lang.Boolean) ? @is_notified_for_invoices.boolean_value : @is_notified_for_invoices
            @is_notified_for_invoices = tmp_bool ? true : false
          end

          # conversion for parent_account_id [type = java.util.UUID]
          @parent_account_id = j_obj.parent_account_id
          @parent_account_id = @parent_account_id.nil? ? nil : @parent_account_id.to_s

          # conversion for is_payment_delegated_to_parent [type = java.lang.Boolean]
          @is_payment_delegated_to_parent = j_obj.is_payment_delegated_to_parent
          if @is_payment_delegated_to_parent.nil?
            @is_payment_delegated_to_parent = false
          else
            tmp_bool = (@is_payment_delegated_to_parent.java_kind_of? java.lang.Boolean) ? @is_payment_delegated_to_parent.boolean_value : @is_payment_delegated_to_parent
            @is_payment_delegated_to_parent = tmp_bool ? true : false
          end
          self
        end

      end
    end
  end
end
