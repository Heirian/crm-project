# frozen_string_literal: true

class Phone < ApplicationRecord
  validates :area_code, :country_code, :number, presence: true
  belongs_to :phonable, polymorphic: true
end
