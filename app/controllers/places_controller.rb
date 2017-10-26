# frozen_string_literal: true

class PlacesController < ApplicationController
  before_action :set_place, only: %I[show edit update destroy]
  before_action :authenticate_user!
  def index
    @places = Place.all
  end

  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    unless @place.save
      flash[:danger] = @place.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @place
  end

  def edit; end

  def update
    if @place.update(place_params)
      flash[:success] = I18n.t(:updated_successfully)
      redirect_to @place
    else
      flash[:danger] = @place.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @place.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
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
