class BankAccount < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :bank_branch_number
      t.string :account_number, index: true
      t.integer :person_id, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
