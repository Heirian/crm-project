# frozen_string_literal: true

class Email < ApplicationRecord
  validates :body, presence: true
  belongs_to :emailable, polymorphic: true
end
