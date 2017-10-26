# frozen_string_literal: true

class AddressesController < ApplicationController
  before_action :authenticate_user!
  def new
    @address = Address.new
  end

  def create
    @address = @addressable.addresses.new(address_params)
    if @address.save
      flash[:success] = I18n.t(:register_add_success)
      redirect_to @addressable
    else
      flash[:danger] = @address.errors.full_messages
      render 'new'
    end
  end

  def edit
    @address = @addressable.addresses.find(params[:id])
  end

  def update
    @address = @addressable.addresses.find(params[:id])
    if @address.update(address_params)
      flash[:success] = I18n.t(:updated_successfully)
      redirect_to @addressable
    else
      flash[:danger] = @address.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @address = @addressable.addresses.find(params[:id])
    @address.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to @addressable
  end

  private

  def address_params
    params.require(:address).permit(:street_address, :zip_code, :city_id, :kind)
  end
end
