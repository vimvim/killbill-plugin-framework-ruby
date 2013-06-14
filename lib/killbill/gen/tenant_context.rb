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

      java_package 'com.ning.billing.util.callcontext'
      class TenantContext

        include com.ning.billing.util.callcontext.TenantContext

        attr_accessor :tenant_id

        def initialize()
        end

        def to_java()
          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = java.util.UUID.fromString(@tenant_id.to_s) unless @tenant_id.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = j_obj.tenant_id
          @tenant_id = @tenant_id.nil? ? nil : @tenant_id.to_s
          self
        end

      end
    end
  end
end
