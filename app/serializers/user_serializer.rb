class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :email
end
