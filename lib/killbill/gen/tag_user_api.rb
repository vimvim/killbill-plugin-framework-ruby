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
    module Api

      java_package 'com.ning.billing.util.api'
      class TagUserApi

        include com.ning.billing.util.api.TagUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.util.List getTagDefinitions(Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_tag_definitions(context)
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_tag_definitions(context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.util.tag.TagDefinition]
            m = Killbill::Plugin::Model::TagDefinition.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::com.ning.billing.util.tag.TagDefinition createTagDefinition(Java::java.lang.String, Java::java.lang.String, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_tag_definition(definitionName, description, context)
          # conversion for definitionName [type = java.lang.String]
          definitionName = definitionName.to_s unless definitionName.nil?
          # conversion for description [type = java.lang.String]
          description = description.to_s unless description.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_tag_definition(definitionName, description, context)
            # conversion for res [type = com.ning.billing.util.tag.TagDefinition]
            res = Killbill::Plugin::Model::TagDefinition.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.util.api.TagDefinitionApiException => e
            raise Killbill::Plugin::Model::TagDefinitionApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void deleteTagDefinition(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
        def delete_tag_definition(tagDefinitionId, context)
          # conversion for tagDefinitionId [type = java.util.UUID]
          tagDefinitionId = java.util.UUID.fromString(tagDefinitionId.to_s) unless tagDefinitionId.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.delete_tag_definition(tagDefinitionId, context)
        end

        java_signature 'Java::com.ning.billing.util.tag.TagDefinition getTagDefinition(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_tag_definition(tagDefinitionId, context)
          # conversion for tagDefinitionId [type = java.util.UUID]
          tagDefinitionId = java.util.UUID.fromString(tagDefinitionId.to_s) unless tagDefinitionId.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_tag_definition(tagDefinitionId, context)
            # conversion for res [type = com.ning.billing.util.tag.TagDefinition]
            res = Killbill::Plugin::Model::TagDefinition.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.util.api.TagDefinitionApiException => e
            raise Killbill::Plugin::Model::TagDefinitionApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.util.tag.TagDefinition getTagDefinitionForName(Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_tag_definition_for_name(tageDefinitionName, context)
          # conversion for tageDefinitionName [type = java.lang.String]
          tageDefinitionName = tageDefinitionName.to_s unless tageDefinitionName.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_tag_definition_for_name(tageDefinitionName, context)
            # conversion for res [type = com.ning.billing.util.tag.TagDefinition]
            res = Killbill::Plugin::Model::TagDefinition.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.util.api.TagDefinitionApiException => e
            raise Killbill::Plugin::Model::TagDefinitionApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void addTags(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::java.util.Collection, Java::com.ning.billing.util.callcontext.CallContext)'
        def add_tags(objectId, objectType, tagDefinitionIds, context)
          # conversion for objectId [type = java.util.UUID]
          objectId = java.util.UUID.fromString(objectId.to_s) unless objectId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for tagDefinitionIds [type = java.util.Collection]
          tmp = java.util.ArrayList.new
          (tagDefinitionIds || []).each do |m|
            # conversion for m [type = java.util.UUID]
            m = java.util.UUID.fromString(m.to_s) unless m.nil?
            tmp.add(m)
          end
          tagDefinitionIds = tmp
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.add_tags(objectId, objectType, tagDefinitionIds, context)
        end

        java_signature 'Java::void addTag(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
        def add_tag(objectId, objectType, tagDefinitionId, context)
          # conversion for objectId [type = java.util.UUID]
          objectId = java.util.UUID.fromString(objectId.to_s) unless objectId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for tagDefinitionId [type = java.util.UUID]
          tagDefinitionId = java.util.UUID.fromString(tagDefinitionId.to_s) unless tagDefinitionId.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.add_tag(objectId, objectType, tagDefinitionId, context)
        end

        java_signature 'Java::void removeTags(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::java.util.Collection, Java::com.ning.billing.util.callcontext.CallContext)'
        def remove_tags(objectId, objectType, tagDefinitions, context)
          # conversion for objectId [type = java.util.UUID]
          objectId = java.util.UUID.fromString(objectId.to_s) unless objectId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for tagDefinitions [type = java.util.Collection]
          tmp = java.util.ArrayList.new
          (tagDefinitions || []).each do |m|
            # conversion for m [type = java.util.UUID]
            m = java.util.UUID.fromString(m.to_s) unless m.nil?
            tmp.add(m)
          end
          tagDefinitions = tmp
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.remove_tags(objectId, objectType, tagDefinitions, context)
        end

        java_signature 'Java::void removeTag(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
        def remove_tag(objectId, objectType, tagDefinitionId, context)
          # conversion for objectId [type = java.util.UUID]
          objectId = java.util.UUID.fromString(objectId.to_s) unless objectId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for tagDefinitionId [type = java.util.UUID]
          tagDefinitionId = java.util.UUID.fromString(tagDefinitionId.to_s) unless tagDefinitionId.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.remove_tag(objectId, objectType, tagDefinitionId, context)
        end

        java_signature 'Java::java.util.List getTagsForObject(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_tags_for_object(objectId, objectType, context)
          # conversion for objectId [type = java.util.UUID]
          objectId = java.util.UUID.fromString(objectId.to_s) unless objectId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_tags_for_object(objectId, objectType, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.util.tag.Tag]
            m = Killbill::Plugin::Model::Tag.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::java.util.List getTagsForAccountType(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_tags_for_account_type(accountId, objectType, context)
          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_tags_for_account_type(accountId, objectType, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.util.tag.Tag]
            m = Killbill::Plugin::Model::Tag.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::java.util.List getTagsForAccount(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_tags_for_account(accountId, context)
          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_tags_for_account(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.util.tag.Tag]
            m = Killbill::Plugin::Model::Tag.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end
      end
    end
  end
end
