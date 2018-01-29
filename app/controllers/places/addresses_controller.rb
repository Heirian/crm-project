# frozen_string_literal: true

module Places
  class AddressesController < ::AddressesController
    before_action :set_addressable
    before_action :set_address, only: %I[show edit update destroy]

    private

    def set_addressable
      @addressable = Place.find(params[:place_id])
    end
  end
end
