# frozen_string_literal: true

class Address < ApplicationRecord
  validates :zip_code, format: /\A[0-9]{8}\z/
  validates :street_address, :zip_code, :city_id, presence: true
  belongs_to :addressable, polymorphic: true
  belongs_to :city
end
