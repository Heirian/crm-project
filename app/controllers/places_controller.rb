# frozen_string_literal: true

class PlacesController < ApplicationController
  before_action :set_place, only: %I[show edit update destroy]
  before_action :authenticate_user!
  def index
    @places = Place.paginate(page: params[:page], per_page: 10).includes(:person)
  end

  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    return render 'new' unless @place.save
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @place
  end

  def edit; end

  def update
    return render 'edit' unless @place.update(place_params)
    flash[:success] = I18n.t(:updated_successfully)
    redirect_to @place
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
