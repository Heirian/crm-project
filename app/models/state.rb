# frozen_string_literal: true

class State < ApplicationRecord
  validates :name, :country_id, presence: true
  validates :name, uniqueness: { case_sensitive: false }, format: /\A[^0-9`!@#\$%\^&*+_=]+\z/
  has_many :cities, foreign_key: :state_id, dependent: :destroy
  belongs_to :country
end
