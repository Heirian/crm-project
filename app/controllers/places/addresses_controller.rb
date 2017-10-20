# frozen_string_literal: true

module Places
  class AddressesController < ::AddressesController
    before_action :set_addressable

    private

    def set_addressable
      @addressable = Place.find(params[:place_id])
    end
  end
end
