# frozen_string_literal: true

class AddressesController < ApplicationController
  def create
    @address = @addressable.addresses.new(address_params)
    if @address.save
      flash[:success] = I18n.t(:address_add_success)
    else
      flash[:danger] = @address.errors.full_messages
    end
    redirect_to @addressable
  end

  def update
    @address = @addressable.addresses.find(params[:id])
    if @address.update(address_params)
      flash[:success] = I18n.t(:address_add_success)
    else
      flash[:danger] = @address.errors.full_messages
    end
    redirect_to @addressable
  end

  def destroy
    @address = @addressable.addresses.find(params[:id])
    @address.destroy
    flash[:danger] = I18n.t(:address_deleted_successfully)
    redirect_to @addressable
  end

  private

  def address_params
    params.require(:address).permit(:street_address, :zip_code, :city_id)
  end
end
