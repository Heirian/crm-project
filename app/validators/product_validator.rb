# frozen_string_literal: true

class ProductValidator < ActiveModel::Validator
  def validate(record)
    return if options[:fields].any? { |field| record.send(field) == 'Good' || 'Service' }
    record.errors[:base] << I18n.t(:type_not_permited)
  end
end
