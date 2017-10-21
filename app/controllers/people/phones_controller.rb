# frozen_string_literal: true

module People
  class PhonesController < ::PhonesController
    before_action :set_phonable

    private

    def set_phonable
      @phonable = Person.find(params[:person_id])
    end
  end
end
