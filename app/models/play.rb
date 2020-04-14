class Play < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :reviews

    has_one_attached :image
end
