# frozen_string_literal: true

class Email < ApplicationRecord
  validates :email, presence: true
  belongs_to :emailable, polymorphic: true
end
