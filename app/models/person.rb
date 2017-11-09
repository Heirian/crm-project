# frozen_string_literal: true

class Person < ApplicationRecord
  acts_as_paranoid

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
  has_many :orders, dependent: :nullify

  enum gender: %I[male female]
  enum marital_status: %I[single married divorced separated widowed common_law_marriage]
end
