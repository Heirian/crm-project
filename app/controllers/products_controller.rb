# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %I[show edit update destroy]
  before_action :new_produtc, only: %I[new_good new_service]
  before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def service_index
    @products = Service.all
  end

  def good_index
    @products = Good.all
  end

  def show; end

  def new; end

  def new_service; end

  def new_good; end

  def edit; end

  def create
    @product = Product.new(product_params)
    unless @produt.save
      flash.now[:danger] = @product.errors.full_messages
      return render_new_product_page(@product)
    end
    flash[:sucess] = I18n.t(:register_add_success)
    redirect_to product_path(@product)
  end

  def update
    unless @product.update(product_params)
      flash.now[:danger] = @product.errors.full_messages
      return render 'edit'
    end
    flash[:sucess] = I18n.t(:updated_successfully)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to products_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  def new_product
    @product ||= Product.new
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :type, :stock, :baseValue, :category)
  end

  def render_new_product_page(product)
    product.type.eql?('Service') ? render('new_service') : render('new_good')
  end
end
