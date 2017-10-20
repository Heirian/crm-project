# frozen_string_literal: true

class StatesController < ApplicationController
  before_action :set_state, only: %I[show edit update destroy]
  before_action :authenticate_user!
  def index
    @states = State.all
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    return render 'new' unless @state.save
    redirect_to states_path
  end

  def edit; end

  def update
    return render 'edit' unless @state.update(state_params)
    redirect_to states_path
  end

  def destroy
    @state.destroy
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
