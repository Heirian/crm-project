# frozen_string_literal: true

class StatesController < ApplicationController
  before_action :set_state, only: %I[show edit update destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @states = State.all.includes(:country)
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    unless @state.save
      flash.now[:danger] = @state.errors.full_messages
      return render 'new'
    end
    flash[:success] = I18n.t(:register_add_success)
    redirect_to states_path
  end

  def edit; end

  def update
    unless @state.update(state_params)
      flash.now[:danger] = @state.errors.full_messages
      return render 'edit'
    end
    flash[:success] = I18n.t(:updated_successfully)
    redirect_to states_path
  end

  def destroy
    @state.destroy
    flash[:danger] = I18n.t(:deleted_successfully)
    redirect_to states_path
  end

  private

  def set_state
    @state = State.find(params[:id])
  end

  def state_params
    params.require(:state).permit(:name, :country_id)
  end
end
