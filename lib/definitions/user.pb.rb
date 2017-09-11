# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'
require 'protobuf/rpc/service'

module Protos
  ::Protobuf::Optionable.inject(self) { ::Google::Protobuf::FileOptions }

  ##
  # Message Classes
  #
  class User < ::Protobuf::Message; end
  class Users < ::Protobuf::Message; end
  class UserRequest < ::Protobuf::Message; end


  ##
  # Message Fields
  #
  class User
    optional :string, :first_name, 1
    optional :string, :last_name, 2
    optional :int32, :id, 3
  end

  class Users
    repeated ::Protos::User, :records, 1
  end

  class UserRequest
    optional :int32, :id, 1
  end


  ##
  # Service Classes
  #
  class UserService < ::Protobuf::Rpc::Service
    rpc :search, ::Protos::UserRequest, ::Protos::Users
  end

end

