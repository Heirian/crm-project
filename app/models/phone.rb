# frozen_string_literal: true

class Phone < ApplicationRecord
  INSTANT_MESSAGES_OPTIONS = {
    '0' => 'Whatsapp',
    '1' => 'Messenger',
    '2' => 'Skype',
    '3' => 'Telegram'
  }.freeze

  before_save :clean_phone_number
  before_save :clean_instant_message_text

  validates :number, :kind, presence: true
  validates :number, phone: { possible: true }

  belongs_to :phonable, polymorphic: true

  enum kind: { personal: 0, work: 1, message: 2 }
  serialize :instant_messages, Array

  def instant_message_to_array
    instant_message_text = []
    instant_message.split('').each do |app|
      instant_message_text << Phone::INSTANT_MESSAGES_OPTIONS[app]
    end
    instant_message_text.join(', ')
  end

  private

  def clean_phone_number
    self.number = number.gsub(/[^0-9]/, '')
  end

  def clean_instant_message_text
    self.instant_message = instant_message.gsub(/[^0-9]/, '')
  end
end
