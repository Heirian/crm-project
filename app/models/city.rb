# frozen_string_literal: true

class City < ApplicationRecord
  validates :name, :state_id, presence: true
  validates :name, uniqueness: { case_sensitive: false }, format: /\A[^0-9`!@#\$%\^&*+_=]+\z/
  belongs_to :state, dependent: :destroy
  has_many :addresses, foreign_key: :city_id, dependent: :nullify
end
