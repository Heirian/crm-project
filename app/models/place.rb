# frozen_string_literal: true

class Place < ApplicationRecord
  validates :name, :person_id, presence: true
  has_many :emails, as: :emailable, dependent: :destroy
  has_many :phones, as: :phonable, dependent: :destroy
end
