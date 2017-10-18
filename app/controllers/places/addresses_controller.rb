# frozen_string_literal: true

class People::AddressesController < AddressesController
  before_action :set_addressable

  private

  def set_addressable
    @addressable = Place.find(params[:person_id])
  end
end
