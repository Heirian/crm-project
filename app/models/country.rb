# frozen_string_literal: true

class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  has_many :states, foreign_key: :country_id, dependent: :destroy
end
