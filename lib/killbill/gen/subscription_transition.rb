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

      java_package 'com.ning.billing.entitlement.api.user'
      class SubscriptionTransition

        include com.ning.billing.entitlement.api.user.SubscriptionTransition

        attr_accessor :subscription_id, :bundle_id, :previous_state, :next_state, :previous_event_id, :previous_event_created_date, :previous_plan, :next_plan, :previous_phase, :next_event_id, :next_event_created_date, :next_phase, :previous_price_list, :next_price_list, :requested_transition_time, :effective_transition_time, :transition_type

        def initialize()
        end

        def to_java()
          # conversion for subscription_id [type = java.util.UUID]
          @subscription_id = java.util.UUID.fromString(@subscription_id.to_s) unless @subscription_id.nil?

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = java.util.UUID.fromString(@bundle_id.to_s) unless @bundle_id.nil?

          # conversion for previous_state [type = com.ning.billing.entitlement.api.user.SubscriptionState]
          @previous_state = Java::com.ning.billing.entitlement.api.user.SubscriptionState.value_of("#{@previous_state.to_s}") unless @previous_state.nil?

          # conversion for next_state [type = com.ning.billing.entitlement.api.user.SubscriptionState]
          @next_state = Java::com.ning.billing.entitlement.api.user.SubscriptionState.value_of("#{@next_state.to_s}") unless @next_state.nil?

          # conversion for previous_event_id [type = java.util.UUID]
          @previous_event_id = java.util.UUID.fromString(@previous_event_id.to_s) unless @previous_event_id.nil?

          # conversion for previous_event_created_date [type = org.joda.time.DateTime]
          if !@previous_event_created_date.nil?
            @previous_event_created_date =  (@previous_event_created_date.kind_of? Time) ? DateTime.parse(@previous_event_created_date.to_s) : @previous_event_created_date
            @previous_event_created_date = Java::org.joda.time.DateTime.new(@previous_event_created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for previous_plan [type = com.ning.billing.catalog.api.Plan]
          @previous_plan = @previous_plan.to_java unless @previous_plan.nil?

          # conversion for next_plan [type = com.ning.billing.catalog.api.Plan]
          @next_plan = @next_plan.to_java unless @next_plan.nil?

          # conversion for previous_phase [type = com.ning.billing.catalog.api.PlanPhase]
          @previous_phase = @previous_phase.to_java unless @previous_phase.nil?

          # conversion for next_event_id [type = java.util.UUID]
          @next_event_id = java.util.UUID.fromString(@next_event_id.to_s) unless @next_event_id.nil?

          # conversion for next_event_created_date [type = org.joda.time.DateTime]
          if !@next_event_created_date.nil?
            @next_event_created_date =  (@next_event_created_date.kind_of? Time) ? DateTime.parse(@next_event_created_date.to_s) : @next_event_created_date
            @next_event_created_date = Java::org.joda.time.DateTime.new(@next_event_created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for next_phase [type = com.ning.billing.catalog.api.PlanPhase]
          @next_phase = @next_phase.to_java unless @next_phase.nil?

          # conversion for previous_price_list [type = com.ning.billing.catalog.api.PriceList]
          @previous_price_list = @previous_price_list.to_java unless @previous_price_list.nil?

          # conversion for next_price_list [type = com.ning.billing.catalog.api.PriceList]
          @next_price_list = @next_price_list.to_java unless @next_price_list.nil?

          # conversion for requested_transition_time [type = org.joda.time.DateTime]
          if !@requested_transition_time.nil?
            @requested_transition_time =  (@requested_transition_time.kind_of? Time) ? DateTime.parse(@requested_transition_time.to_s) : @requested_transition_time
            @requested_transition_time = Java::org.joda.time.DateTime.new(@requested_transition_time.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for effective_transition_time [type = org.joda.time.DateTime]
          if !@effective_transition_time.nil?
            @effective_transition_time =  (@effective_transition_time.kind_of? Time) ? DateTime.parse(@effective_transition_time.to_s) : @effective_transition_time
            @effective_transition_time = Java::org.joda.time.DateTime.new(@effective_transition_time.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for transition_type [type = com.ning.billing.entitlement.api.SubscriptionTransitionType]
          @transition_type = Java::com.ning.billing.entitlement.api.SubscriptionTransitionType.value_of("#{@transition_type.to_s}") unless @transition_type.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for subscription_id [type = java.util.UUID]
          @subscription_id = j_obj.subscription_id
          @subscription_id = @subscription_id.nil? ? nil : @subscription_id.to_s

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = j_obj.bundle_id
          @bundle_id = @bundle_id.nil? ? nil : @bundle_id.to_s

          # conversion for previous_state [type = com.ning.billing.entitlement.api.user.SubscriptionState]
          @previous_state = j_obj.previous_state
          @previous_state = @previous_state.to_s.to_sym unless @previous_state.nil?

          # conversion for next_state [type = com.ning.billing.entitlement.api.user.SubscriptionState]
          @next_state = j_obj.next_state
          @next_state = @next_state.to_s.to_sym unless @next_state.nil?

          # conversion for previous_event_id [type = java.util.UUID]
          @previous_event_id = j_obj.previous_event_id
          @previous_event_id = @previous_event_id.nil? ? nil : @previous_event_id.to_s

          # conversion for previous_event_created_date [type = org.joda.time.DateTime]
          @previous_event_created_date = j_obj.previous_event_created_date
          if !@previous_event_created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@previous_event_created_date)
            @previous_event_created_date = DateTime.iso8601(str)
          end

          # conversion for previous_plan [type = com.ning.billing.catalog.api.Plan]
          @previous_plan = j_obj.previous_plan
          @previous_plan = Killbill::Plugin::Model::Plan.new.to_ruby(@previous_plan) unless @previous_plan.nil?

          # conversion for next_plan [type = com.ning.billing.catalog.api.Plan]
          @next_plan = j_obj.next_plan
          @next_plan = Killbill::Plugin::Model::Plan.new.to_ruby(@next_plan) unless @next_plan.nil?

          # conversion for previous_phase [type = com.ning.billing.catalog.api.PlanPhase]
          @previous_phase = j_obj.previous_phase
          @previous_phase = Killbill::Plugin::Model::PlanPhase.new.to_ruby(@previous_phase) unless @previous_phase.nil?

          # conversion for next_event_id [type = java.util.UUID]
          @next_event_id = j_obj.next_event_id
          @next_event_id = @next_event_id.nil? ? nil : @next_event_id.to_s

          # conversion for next_event_created_date [type = org.joda.time.DateTime]
          @next_event_created_date = j_obj.next_event_created_date
          if !@next_event_created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@next_event_created_date)
            @next_event_created_date = DateTime.iso8601(str)
          end

          # conversion for next_phase [type = com.ning.billing.catalog.api.PlanPhase]
          @next_phase = j_obj.next_phase
          @next_phase = Killbill::Plugin::Model::PlanPhase.new.to_ruby(@next_phase) unless @next_phase.nil?

          # conversion for previous_price_list [type = com.ning.billing.catalog.api.PriceList]
          @previous_price_list = j_obj.previous_price_list
          @previous_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@previous_price_list) unless @previous_price_list.nil?

          # conversion for next_price_list [type = com.ning.billing.catalog.api.PriceList]
          @next_price_list = j_obj.next_price_list
          @next_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@next_price_list) unless @next_price_list.nil?

          # conversion for requested_transition_time [type = org.joda.time.DateTime]
          @requested_transition_time = j_obj.requested_transition_time
          if !@requested_transition_time.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@requested_transition_time)
            @requested_transition_time = DateTime.iso8601(str)
          end

          # conversion for effective_transition_time [type = org.joda.time.DateTime]
          @effective_transition_time = j_obj.effective_transition_time
          if !@effective_transition_time.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@effective_transition_time)
            @effective_transition_time = DateTime.iso8601(str)
          end

          # conversion for transition_type [type = com.ning.billing.entitlement.api.SubscriptionTransitionType]
          @transition_type = j_obj.transition_type
          @transition_type = @transition_type.to_s.to_sym unless @transition_type.nil?
          self
        end

      end
    end
  end
end
