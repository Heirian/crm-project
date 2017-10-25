# frozen_string_literal: true

class Phone < ApplicationRecord
  before_save :clean_phone_number

  validates :number, :kind, presence: true
  validates :number, phone: { possible: true }

  belongs_to :phonable, polymorphic: true

  enum kind: { personal: 0, work: 1, message: 2 }

  private

  def clean_phone_number
    self.number = number.gsub(/[^0-9]/, '')
  end
end
