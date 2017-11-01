# frozen_string_literal: true

class PhonesController < ApplicationController
  before_action :authenticate_user!
  include PhoneHelper
  # @phone instance variable for edit, update and destroy is defined by
  # set_phone method on PhoneHelper and call on phonable module
  def index
    @phones = @phonable.phones
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = @phonable.phones.new(phone_params)
    unless @phone.save
      flash.now[:danger] = @phone.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:phone_add_success)
    redirect_to @phonable
  end

  def edit; end

  def update
    unless @phone.update(phone_params)
      flash.now[:danger] = @phone.errors.full_messages
      return render 'edit'
    end
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @phonable
  end

  def destroy
    @phone.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to @phonable
  end

  private

  def phone_params
    params.require(:phone).permit(:country_code, :area_code, :number, :kind, :main, instant_message: [])
  end
end
