# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :play
  belongs_to :user

  validates :rating, :comment, presence: true
end
