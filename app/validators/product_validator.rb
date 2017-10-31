class ProductValidator < ActiveModel::Validator
  def validate(record)
    return if options[:fields].any? { |field| record.send(field) == 'Service' || 'Good' }
    record.errors[:base] << I18n.t(:type_not_permited)
  end
end
