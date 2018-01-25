# frozen_string_literal: true

class Following < ApplicationRecord
  belongs_to :profile
  belongs_to :following, :class_name => 'Profile', foreign_key: profile_id
end
