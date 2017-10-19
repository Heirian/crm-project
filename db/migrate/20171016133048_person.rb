class Person < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :type, null: false
      t.string :name

      #individual
      t.date :birthday
      t.integer :gender, default: 0
      t.integer :marital_status, default: 0
      t.string :cpf
      t.string :rg

      #company
      t.string :trading_name
      t.string :cnpj
      t.string :inscricao_estadual

      t.timestamps
    end

    add_index :people, :type
  end
end
