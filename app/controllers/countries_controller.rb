# frozen_string_literal: true

class CountriesController < ApplicationController
  before_action :set_country, only: %I[show edit update destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    unless @country.save
      flash.now[:danger] = @country.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:country_add_success)
    redirect_to countries_path
  end

  def edit; end

  def update
    unless @country.update(country_params)
      flash.now[:danger] = @country.errors.full_messages
      return render 'edit'
    end
    flash[:success] = I18n.t(:country_update_success)
    redirect_to countries_path
  end

  def destroy
    @country.destroy
    flash[:danger] = I18n.t(:country_deleted_success)
    redirect_to countries_path
  end

  private

  def set_country
    @country = Country.find(params[:id])
  end

  def country_params
    params.require(:country).permit(:name)
  end
end
