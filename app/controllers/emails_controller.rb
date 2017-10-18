# frozen_string_literal: true

class EmailsController < ApplicationController
  def create
    @email = @emailable.emails.new(email_params)
    if @email.save
      flash[:success] = I18n.t(:email_add_success)
    else
      flash[:danger] = @email.errors.full_messages
    end
    redirect_to @emailable
  end

  def destroy
    @email = @emailable.emails.find(params[:id])
    @email.destroy
    flash[:danger] = I18n.t(:email_deleted_successfully)
    redirect_to @emailable
  end

  private

  def email_params
    params.require(:email).permit(:body)
  end
end
