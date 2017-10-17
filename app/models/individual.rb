# frozen_string_literal: true

class Individual < Person
  validates :birthday, :gender, :marital_status, :rg, :cpf, presence: true
end
