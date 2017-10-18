# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, :type, presence: true

  has_many :emails, as: :emailable, dependent: :destroy
  has_many :phones, as: :phonable, dependent: :destroy
  has_many :addresses, as: :addressable, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :bank_accounts, dependent: :destroy
end
