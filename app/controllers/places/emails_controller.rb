# frozen_string_literal: true

class People::EmailsController < EmailsController
  before_action :set_emailable

  private

  def set_emailable
    @emailable = Place.find(params[:person_id])
  end
end