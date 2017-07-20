# frozen_string_literal: true

class Concert < ApplicationRecord
  has_many :profiles, through: :myconcerts
  has_many :myconcerts

  validates :concert_name, :concert_date, :venue, :cost, presence: true
end
