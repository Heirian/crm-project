# frozen_string_literal: true

class PlacesController < ApplicationController
  before_action :set_place, only: %I[show edit update destroy]
  def index
    @places = Place.all
  end

  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    return render 'new' unless @place.save
    flash[:success] = I18n.t(:place_created_successfully)
    redirect_to @place
  end

  def edit; end

  def update
    if @place.update(place_params)
      flash[:success] = I18n.t(:place_update_successfully)
      redirect_to @place
    else
      render 'edit'
    end
  end

  def destroy
    @place.destroy
    flash[:danger] = I18n.t(:place_deleted_successfully)
    redirect_back fallback_location: places_path
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :person_id)
  end
end
