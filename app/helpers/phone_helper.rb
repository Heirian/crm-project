# frozen_string_literal: true

module PhoneHelper
  private

  def set_phone
    @phone = @phonable.phones.find(params[:id])
  end
end
