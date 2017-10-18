# frozen_string_literal: true

class People::PhonesController < PhonesController
  before_action :set_phonable

  private

  def set_phonable
    @phonable = Place.find(params[:person_id])
  end
end
