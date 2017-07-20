class Concert < ApplicationRecord

  validates :concert_name, :concert_date, :venue, :cost, presence: true
end
