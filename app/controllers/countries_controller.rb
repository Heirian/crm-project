# frozen_string_literal: true

class CountriesController < ApplicationController
  before_action :set_country, only: %I[show edit update destroy]
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    return render 'new' unless @country.save
    redirect_to countries_path
  end

  def edit; end

  def update
    return render 'edit' unless @country.update(country_params)
    redirect_to countries_path
  end

  def destroy
    @country.destroy
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