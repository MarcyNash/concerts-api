class FollowingSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :following_id
end