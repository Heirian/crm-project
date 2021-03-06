# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items.includes(:product)
  end
end
