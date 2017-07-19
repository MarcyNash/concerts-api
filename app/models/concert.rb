class Concert < ApplicationRecord
  belongs_to :user

  validates :concert_name, :concert_date, :venue, :cost,
    :user, presence: true
end
