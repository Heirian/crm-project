# frozen_string_literal: true

class PhonesController < ApplicationController
  before_action :authenticate_user!
  def new
    @phone = Phone.new
  end

  def create
    @phone = @phonable.phones.new(phone_params)
    if @phone.save
      flash[:success] = I18n.t(:phone_add_success)
      redirect_to @phonable
    else
      flash[:danger] = @phone.errors.full_messages
      render 'new'
    end
  end

  def edit
    @phone = @phonable.phones.find(params[:id])
  end

  def update
    @phone = @phonable.phones.find(params[:id])
    if @phone.update(phone_params)
      flash[:success] = I18n.t(:email_add_success)
      redirect_to @phonable
    else
      flash[:danger] = @phone.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @phone = @phonable.phones.find(params[:id])
    @phone.destroy
    flash[:danger] = I18n.t(:phone_deleted_successfully)
    redirect_to @phonable
  end

  private

  def phone_params
    params.require(:phone).permit(:country_code, :area_code, :number, :kind, :main, instant_message: [])
  end
end
