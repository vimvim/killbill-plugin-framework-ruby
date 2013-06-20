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

      java_package 'com.ning.billing.util.tag'
      class ControlTag

        include com.ning.billing.util.tag.ControlTag

        attr_accessor :tag_definition_id, :object_type, :object_id, :id, :created_date, :updated_date, :control_tag_type

        def initialize()
        end

        def to_java()
          # conversion for tag_definition_id [type = java.util.UUID]
          @tag_definition_id = java.util.UUID.fromString(@tag_definition_id.to_s) unless @tag_definition_id.nil?

          # conversion for object_type [type = com.ning.billing.ObjectType]
          @object_type = Java::com.ning.billing.ObjectType.value_of("#{@object_type.to_s}") unless @object_type.nil?

          # conversion for object_id [type = java.util.UUID]
          @object_id = java.util.UUID.fromString(@object_id.to_s) unless @object_id.nil?

          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for control_tag_type [type = com.ning.billing.util.tag.ControlTagType]
          @control_tag_type = Java::com.ning.billing.util.tag.ControlTagType.value_of("#{@control_tag_type.to_s}") unless @control_tag_type.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for tag_definition_id [type = java.util.UUID]
          @tag_definition_id = j_obj.tag_definition_id
          @tag_definition_id = @tag_definition_id.nil? ? nil : @tag_definition_id.to_s

          # conversion for object_type [type = com.ning.billing.ObjectType]
          @object_type = j_obj.object_type
          @object_type = @object_type.to_s.to_sym unless @object_type.nil?

          # conversion for object_id [type = java.util.UUID]
          @object_id = j_obj.object_id
          @object_id = @object_id.nil? ? nil : @object_id.to_s

          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for control_tag_type [type = com.ning.billing.util.tag.ControlTagType]
          @control_tag_type = j_obj.control_tag_type
          @control_tag_type = @control_tag_type.to_s.to_sym unless @control_tag_type.nil?
          self
        end

      end
    end
  end
end
