# frozen_string_literal: true

class Email < ApplicationRecord
  validates :body, presence: true
  validates_email_format_of :body, disposable: true
  belongs_to :emailable, polymorphic: true
end
