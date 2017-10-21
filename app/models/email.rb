# frozen_string_literal: true

class Email < ApplicationRecord
  before_save :downcase_email
  validates :body, presence: true
  validates_email_format_of :body, disposable: true
  belongs_to :emailable, polymorphic: true

  private

  # Converts email to all lower-case.
  def downcase_email
    self.body = body.downcase
  end
end
