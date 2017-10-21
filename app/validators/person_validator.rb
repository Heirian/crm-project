# frozen_string_literal: true

class PersonValidator < ActiveModel::Validator
  def validate(record)
    return if options[:fields].any? { |field| record.send(field) == 'Individual' || 'Company' }
    record.errors[:base] << I18n.t(:type_not_permited)
  end
end
