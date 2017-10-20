class Person < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :type, null: false, index: true
      t.string :name

      #individual
      t.date :birthday
      t.integer :gender, default: 0
      t.integer :marital_status, default: 0
      t.string :cpf, index: true
      t.string :rg

      #company
      t.string :company_name
      t.string :cnpj, index: true
      t.string :inscricao_estadual

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
