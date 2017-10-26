# frozen_string_literal: true

class BankAccountsController < ApplicationController
  before_action :set_person, only: %I[new create edit update destroy]
  before_action :set_bank_account, only: %I[edit update destroy]
  before_action :authenticate_user!
  def new
    @bank_account = @person.bank_accounts.new
  end

  def create
    @bank_account = @person.bank_accounts.new(bank_account_params)
    if @bank_account.save
      flash[:success] = I18n.t(:bank_account_add_success)
      redirect_to @person
    else
      flash[:danger] = @bank_account.errors.full_messages
      render 'new'
    end
  end

  def edit; end

  def update
    if @bank_account.update(bank_account_params)
      flash[:success] = I18n.t(:bank_account_update_success)
    else
      flash[:danger] = @bank_account.errors.full_messages
    end
    redirect_to @person
  end

  def destroy
    @bank_account.destroy
    flash[:danger] = I18n.t(:bank_account_deleted_successfully)
    redirect_to @person
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_bank_account
    @bank_account = @person.bank_accounts.find(params[:id])
  end

  def bank_account_params
    params.require(:bank_account).permit(:bank_name, :bank_branch_number, :account_number)
  end
end
