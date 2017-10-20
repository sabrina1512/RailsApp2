class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
end

scope :rating_desc, -> { order(rating: :desc) }


