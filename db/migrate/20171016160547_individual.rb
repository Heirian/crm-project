class Individual < ActiveRecord::Migration[5.1]
  def change
    create_table :individuals do |t|
      t.string :name
      t.date :birthday
      t.integer :gender, default: 0
      t.integer :marital_status, default: 0
      t.string :cpf
      t.string :rg

      t.timestamps
    end
  end
end
