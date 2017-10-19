# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, :type, presence: true
  validates :name, format: /\A[^`!@#\$%\^&*+_=]+\z/
  validates_with PersonValidator, fields: [:type]
  # add any other characters you'd like to disallow inside the [ brackets ]
  # metacharacters [, \, ^, $, ., |, ?, *, +, (, and ) need to be escaped with a \

  has_many :emails, as: :emailable, dependent: :destroy
  has_many :phones, as: :phonable, dependent: :destroy
  has_many :addresses, as: :addressable, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :bank_accounts, dependent: :destroy

  enum gender: { male: 0, female: 1 }
  enum marital_status: { single: 0, married: 1, divorced: 2, separated: 3, widowed: 4, common_law_marriage: 5 }
end
