# frozen_string_literal: true

class Phone < ApplicationRecord
  INSTANT_MESSAGES_OPTIONS = {
    '0' => 'Whatsapp',
    '1' => 'Messenger',
    '2' => 'Skype',
    '3' => 'Telegram',
    '4' => 'Android Mensagens',
    '5' => 'Viber',
    '6' => 'Line',
    '7' => 'WeChat',
    '8' => 'KakaoTalk',
    '9' => 'Kik Messenger',
    '10' => 'ChatOn',
    '11' => 'BBM',
    '12' => 'GroupMe'
  }.freeze

  before_save :clean_phone_number
  before_save :clean_instant_message_text

  # validate :check_main_phone
  validates :number, :kind, presence: true
  validates :number, phone: { possible: true }

  belongs_to :phonable, polymorphic: true

  enum kind: %I[personal work message]
  serialize :instant_messages, Array

  def instant_message_to_array
    instant_message_text = []
    instant_message.split('*').each do |app|
      instant_message_text << Phone::INSTANT_MESSAGES_OPTIONS[app]
    end
    instant_message_text.join(', ').gsub(/[,]/, '')
  end

  private

  def clean_phone_number
    self.number = number.gsub(/[^0-9]/, '')
  end

  def clean_instant_message_text
    self.instant_message = instant_message.gsub(/[^0-9]/, '*')
  end

  # def check_main_phone
  #   phonable.phones.map do |phone|
  #     phone.id.eql? self.id && phone.main.eql? true
  #   end
  #   self.main = false if phonable.phones.map(&:main).include?(true) && main.eql?(true)
  # end
end
