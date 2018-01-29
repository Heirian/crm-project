# frozen_string_literal: true

module Places
  class EmailsController < ::EmailsController
    before_action :set_emailable
    before_action :set_email, only: %I[show edit update destroy]

    private

    def set_emailable
      @emailable = Place.find(params[:place_id])
    end
  end
end
