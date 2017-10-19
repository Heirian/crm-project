# frozen_string_literal: true

module Place
  class EmailsController < ::EmailsController
    before_action :set_emailable

    private

    def set_emailable
      @emailable = Place.find(params[:place_id])
    end
  end
end
