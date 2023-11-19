class Dress < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_one_attached :image
end
