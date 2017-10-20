# frozen_string_literal: true

module Places
  class PhonesController < ::PhonesController
    before_action :set_phonable

    private

    def set_phonable
      @phonable = Place.find(params[:place_id])
    end
  end
end
