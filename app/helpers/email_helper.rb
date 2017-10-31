# frozen_string_literal: true

module EmailHelper
  private

  def set_email
    @email = @emailable.emails.find(params[:id])
  end
end
