# frozen_string_literal: true

class Phone < ApplicationRecord
  before_save :clean_phone_number

  validates :number, presence: true
  validates :number, phone: { possible: true }

  belongs_to :phonable, polymorphic: true

  private

  def clean_phone_number
    self.number = number.gsub(/[^0-9]/, '')
  end
end
