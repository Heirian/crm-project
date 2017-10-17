# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, :type, presence: true
end
