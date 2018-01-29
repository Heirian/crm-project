class AddKindToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :kind, :interger, default: 0
    add_index :addresses, :kind
  end
end
