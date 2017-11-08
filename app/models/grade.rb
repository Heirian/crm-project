class Grade < ApplicationRecord
  belongs_to :product

  delegate :name, to: :product, prefix: true, allow_nil: true
end
