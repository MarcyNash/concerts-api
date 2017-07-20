# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  has_many :concerts, through: :myconcerts
  has_many :myconcerts

  validates :user_name, :user, presence: true
end
