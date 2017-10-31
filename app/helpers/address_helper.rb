# frozen_string_literal: true

module AddressHelper
  private

  def set_address
    @address = @addressable.addresses.find(params[:id])
  end
end
