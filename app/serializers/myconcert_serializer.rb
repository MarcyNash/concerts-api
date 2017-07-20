class MyconcertSerializer < ActiveModel::Serializer
  attributes :id
  # has_one :profile
  has_one :concert
end
