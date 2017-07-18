class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :about_me
end
