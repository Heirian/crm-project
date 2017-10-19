class BankAccount < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :bank_branch_number
      t.string :account_number
      t.integer :person_id

      t.timestamps
    end

    add_index :bank_accounts, :person_id
  end
end
