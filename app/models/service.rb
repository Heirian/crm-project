# frozen_string_literal: true

class Service < Product
  def self.model_name
    Product.model_name
  end
end
