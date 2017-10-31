# frozen_string_literal: true

module People
  class EmailsController < ::EmailsController
    before_action :set_emailable
    before_action :set_email, only: %I[show edit update destroy]

    private

    def set_emailable
      @emailable = Person.find(params[:person_id])
    end
  end
end
