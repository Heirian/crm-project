# frozen_string_literal: true

class PhonesController < ApplicationController
  def create
    @phone = @phonable.phones.new(phone_params)
    if @phone.save
      flash[:success] = I18n.t(:phone_add_success)
    else
      flash[:danger] = @phone.errors.full_messages
    end
    redirect_to @phonable
  end

  def destroy
    @phone = @phonable.phones.find(params[:id])
    @phone.destroy
    flash[:danger] = I18n.t(:phone_deleted_successfully)
    redirect_to @phonable
  end

  private

  def phone_params
    params.require(:phone).permit(:country_code, :area_code, :number)
  end
end