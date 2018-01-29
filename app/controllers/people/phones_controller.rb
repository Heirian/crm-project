# frozen_string_literal: true

module People
  class PhonesController < ::PhonesController
    before_action :set_phonable
    before_action :set_phone, only: %I[show edit update destroy]

    private

    def set_phonable
      @phonable = Person.find(params[:person_id])
    end
  end
end
