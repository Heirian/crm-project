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
    unless @email.save
      flash.now[:danger] = @email.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @emailable
  end

  def edit; end

  def update
    unless @email.update(email_params)
      flash.now[:danger] = @email.errors.full_messages
      return render 'edit'
    end
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
