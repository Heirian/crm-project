# frozen_string_literal: true

class EmailsController < ApplicationController
  before_action :authenticate_user!
  def new
    @email = Email.new
  end

  def create
    @email = @emailable.emails.new(email_params)
    if @email.save
      flash[:success] = I18n.t(:register_add_success)
      redirect_to @emailable
    else
      flash[:danger] = @email.errors.full_messages
      render 'new'
    end
  end

  def edit
    @email = @emailable.emails.find(params[:id])
  end

  def update
    @email = @emailable.emails.find(params[:id])
    if @email.update(email_params)
      flash[:success] = I18n.t(:updated_successfully)
      redirect_to @emailable
    else
      flash[:danger] = @email.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @email = @emailable.emails.find(params[:id])
    @email.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to @emailable
  end

  private

  def email_params
    params.require(:email).permit(:body, :kind, :main)
  end
end
