# frozen_string_literal: true

class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  delegate :name, to: :category, prefix: true

  has_one_attached :image

  validates :title, :description, :director, presence: true

  validates :image, attached: true, content_type: ['image/png', 'image/jpeg']
end
