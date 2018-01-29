# frozen_string_literal: true

module People
  class AddressesController < ::AddressesController
    before_action :set_addressable
    before_action :set_address, only: %I[show edit update destroy]

    private

    def set_addressable
      @addressable = Person.find(params[:person_id])
    end
  end
end
