# frozen_string_literal: true

class Good < Product
  validates :stock, presence: true
  validates :stock, format: /\A[^A-Z`!@#\$%\^&*+_=]+\z/

  def self.model_name
    Product.model_name
  end
end
