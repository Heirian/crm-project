class Company < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :trading_name
      t.string :company_name
      t.string :cnpj
      t.string :inscricao_estadual

      t.timestamps
    end
  end
end
