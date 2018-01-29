# frozen_string_literal: true

class AddressesController < ApplicationController
  before_action :authenticate_user!
  include AddressHelper
  # @address instance variable for edit, update and destroy is defined by
  # set_address method on AddressHelper and called by addressable module

  def new
    @address = Address.new
  end

  def create
    @address = @addressable.addresses.new(address_params)
    return render 'new' unless @address.save
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @addressable
  end

  def edit; end

  def update
    return render 'edit' unless @address.update(address_params)
    flash[:success] = I18n.t(:updated_successfully)
    redirect_to @addressable
  end

  def destroy
    @address.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to @addressable
  end

  private

  def address_params
    params.require(:address).permit(:street_address, :zip_code, :city_id, :kind)
  end
end
