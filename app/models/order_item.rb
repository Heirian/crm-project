# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.base_value
    end
  end

  def total_price
    unit_price * quantity
  end

  private

  def product_present
    errors.add(:product, 'não é válido ou não está ativo.') if product.nil?
  end

  def order_present
    errors.add(:order, 'não é válida') if order.nil?
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_value] = quantity * self[:unit_price]
  end
end
