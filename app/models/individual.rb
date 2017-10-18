# frozen_string_literal: true

class Individual < Person
  validates :birthday, :gender, :marital_status, :rg, :cpf, presence: true

  # With self.model_name now url_for @person will map to individual_path as expected.
  def self.model_name
    Person.model_name
  end
end