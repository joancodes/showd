# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :plays, dependent: :destroy
end
