# frozen_string_literal: true

class Address < ApplicationRecord
  validates :street_address, :zip_code, :city_id, presence: true
  belongs_to :addressable, polymorphic: true
  belongs_to :city
end
