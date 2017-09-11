module Protos
  class UserService
    def search
      users = ::User.where(:id => request.id)
      respond_with(:records => users.map(&:to_proto))
    end
  end
end
