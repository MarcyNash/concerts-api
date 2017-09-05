# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  has_many :concerts, through: :myconcerts
  has_many :myconcerts
  has_many :followings, through: :followings
  has_many :followings

  validates :user_name, :user, presence: true
end
