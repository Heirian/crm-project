# frozen_string_literal: true

class RoomsController < ApplicationController
  before_action :set_place, only: %I[new create edit update destroy]
  before_action :set_room, only: %I[edit update destroy]
  before_action :authenticate_user!
  def new
    @room = @place.rooms.new
  end

  def create
    @room = @place.rooms.new(room_params)
    return render 'new' unless @room.save
    flash[:success] = I18n.t(:register_add_success)
    redirect_to @place
  end

  def edit; end

  def update
    return render 'edit' unless @room.update(room_params)
    flash[:success] = I18n.t(:updated_successfully)
    redirect_to @place
  end

  def destroy
    @room.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to @place
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def set_room
    @room = @place.rooms.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:room_name)
  end
end
