# frozen_string_literal: true

class Address < ApplicationRecord
  validates :street_address, :zip_code, presence: true
  belongs_to :addressable, polymorphic: true
end
