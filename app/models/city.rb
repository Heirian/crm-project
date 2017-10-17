# frozen_string_literal: true

class City < ApplicationRecord
  validates :name, :state_id, presence: true
end
