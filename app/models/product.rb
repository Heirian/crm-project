# t.string "name"
# t.text "description"
# t.string "type"
# t.integer "stock"
# t.decimal "baseValue"
#t.string "category"

class Product < ApplicationRecord
  acts_as_paranoid

  validates :name, :description, :type, :baseValue, :category, presence: true
  validates :name, :description, :category, format: /\A[^`!@#\$%\^&*+_=]+\z/
  validates_with ProductValidator, fields: [:type]
  validates_uniqueness_of :name

  # add any other characters you'd like to disallow inside the [ brackets ]
  # metacharacters [, \, ^, $, ., |, ?, *, +, (, and ) need to be escaped with a \


end
