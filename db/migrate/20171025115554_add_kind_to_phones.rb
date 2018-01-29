class AddKindToPhones < ActiveRecord::Migration[5.1]
  def change
    add_column :phones, :kind, :interger, default: 0
    add_index :phones, :kind
  end
end
