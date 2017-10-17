# frozen_string_literal: true

class State < ApplicationRecord
  validates :name, :country_id, presence: true
end
