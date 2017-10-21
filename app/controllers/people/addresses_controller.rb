# frozen_string_literal: true

module People
  class AddressesController < ::AddressesController
    before_action :set_addressable

    private

    def set_addressable
      @addressable = Person.find(params[:person_id])
    end
  end
end
