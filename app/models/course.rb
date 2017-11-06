class Course < ApplicationRecord
  validates :product_id, :courseLoad, presence: true
  belongs_to :product
end
