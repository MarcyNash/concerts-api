class Myconcert < ApplicationRecord
  belongs_to :profile
  belongs_to :concert

  validates :profile, presence: true
  validates :concert, presence: true
end
