class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :fullname, :phone, :created_at
end
