# frozen_string_literal: true

class AddressesController < ApplicationController
  before_action :authenticate_user!
  include AddressHelper
  # @address instance variable for edit, update and destroy is defined by
  # set_address method on AddressHelper and call on addressable module

  def new
    @address = Address.new
  end

  def create
    @address = @addressable.addresses.new(address_params)
    unless @address.save
      flash.now[:danger] = @address.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @addressable
  end

  def edit; end

  def update
    unless @address.update(address_params)
      flash.now[:danger] = @address.errors.full_messages
      return render 'edit'
    end
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
