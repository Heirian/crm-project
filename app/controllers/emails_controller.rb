# frozen_string_literal: true

class EmailsController < ApplicationController
  before_action :authenticate_user!
  include EmailHelper
  # @email instance variable for edit, update and destroy is defined by
  # set_email method on EmailHelper and call on emailable module

  def new
    @email = Email.new
  end

  def create
    @email = @emailable.emails.new(email_params)
    return render 'new' unless @email.save
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @emailable
  end

  def edit; end

  def update
    return render 'edit' unless @email.update(email_params)
    flash[:success] = I18n.t(:updated_successfully)
    redirect_to @emailable
  end

  def destroy
    @email.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to @emailable
  end

  private

  def email_params
    params.require(:email).permit(:body, :kind, :main)
  end
end
