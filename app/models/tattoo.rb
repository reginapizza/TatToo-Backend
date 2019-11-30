# frozen_string_literal: true

class Tattoo < ApplicationRecord
  belongs_to :user
  validates :user,
            :title,
            presence: true
end
