# frozen_string_literal: true

class Phone < ApplicationRecord
  validates :area_code, :country_code, :number, :person_id, :place_id, presence: true
end
