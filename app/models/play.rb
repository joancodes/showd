class Play < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :reviews

    has_one_attached :image

    validates :title, :description, :director, presence: true
    validates :category_id, presence: true

    validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

end
