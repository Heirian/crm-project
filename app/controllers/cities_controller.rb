# frozen_string_literal: true

class CitiesController < ApplicationController
  before_action :set_city, only: %I[show edit update destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    return render 'new' unless @city.save
    redirect_to cities_path
  end

  def edit; end

  def update
    return render 'edit' unless @city.update(city_params)
    redirect_to cities_path
  end

  def destroy
    @city.destroy
    redirect_to cities_path
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :state_id)
  end
end
