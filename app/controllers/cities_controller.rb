# frozen_string_literal: true

class CitiesController < ApplicationController
  before_action :set_city, only: %I[show edit update destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @cities = City.all.includes(state: [:country])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    unless @city.save
      flash.now[:danger] = @city.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:city_add_success)
    redirect_to cities_path
  end

  def edit; end

  def update
    unless @city.update(city_params)
      flash.now[:danger] = @city.errors.full_messages
      return render 'edit'
    end
    flash[:success] = I18n.t(:city_updated_success)
    redirect_to cities_path
  end

  def destroy
    @city.destroy
    flash[:danger] = I18n.t(:city_deleted_success)
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
