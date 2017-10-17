# frozen_string_literal: true

class BankAccount < ApplicationRecord
  validates :bank_name, :bank_branch_number, :account_number,
            :person_id, presence: true
end
