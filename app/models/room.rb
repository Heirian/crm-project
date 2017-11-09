# frozen_string_literal: true

class Room < ApplicationRecord
  validates :room_name, :place_id, presence: true
  belongs_to :place
end
