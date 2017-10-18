# frozen_string_literal: true

class Company < Person
  validates :trading_name, :cnpj, :inscricao_estadual, presence: true
  validates_cnpj_format_of :cnpj
  # With self.model_name now url_for @person will map to company_path as expected.
  def self.model_name
    Person.model_name
  end
end
