# frozen_string_literal: true

# t.string "name"
# t.text "description"
# t.string "type"
# t.integer "stock"
# t.decimal "base_value"
# t.string "category"

class Product < ApplicationRecord
  acts_as_paranoid

  validates :name, :description, :type, :base_value, :category, presence: true
  validates :name, :description, :category, format: /\A[^`!@#\$%\^&*+_=]+\z/
  validates_with ProductValidator, fields: [:type]
  validates :name, uniqueness: true

  # add any other characters you'd like to disallow inside the [ brackets ]
  # metacharacters [, \, ^, $, ., |, ?, *, +, (, and ) need to be escaped with a \
  monetize :base_value, as: :base_value_cent
  enum category: { book: 0, course: 1 }
end
