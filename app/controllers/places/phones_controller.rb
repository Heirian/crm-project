# frozen_string_literal: true

module Place
  class PhonesController < ::PhonesController
    before_action :set_phonable

    private

    def set_phonable
      @phonable = Place.find(params[:place_id])
    end
  end
end
