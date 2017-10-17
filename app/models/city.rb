# frozen_string_literal: true

class City < ApplicationRecord
  validates :name, :state_id, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_many :addresses, as: :addressable, dependent: :destroy
  belongs_to :state
end
