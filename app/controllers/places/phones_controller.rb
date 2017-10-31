# frozen_string_literal: true

module Places
  class PhonesController < ::PhonesController
    before_action :set_phonable
    before_action :set_phone, only: %I[show edit update destroy]

    private

    def set_phonable
      @phonable = Place.find(params[:place_id])
    end
  end
end
