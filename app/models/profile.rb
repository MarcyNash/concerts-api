# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user

  validates :user_name, :user, presence: true
end
