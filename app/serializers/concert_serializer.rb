class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :concert_name, :concert_date, :concert_time, :artist, :venue, :venue_address, :cost
end
