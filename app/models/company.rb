# frozen_string_literal: true

class Company < Person
  validates :trading_name, :cnpj, :inscricao_estadual, presence: true
end
