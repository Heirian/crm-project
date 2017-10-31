# frozen_string_literal: true

module AddressHelper
  def set_address
    @address = @addressable.addresses.find(params[:id])
  end
end
