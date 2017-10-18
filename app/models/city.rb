# frozen_string_literal: true

class City < ApplicationRecord
  validates :name, :state_id, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  belongs_to :state
  has_many :addresses, foreign_key: :city_id, dependent: :nullify
end
