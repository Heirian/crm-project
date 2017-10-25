class AddKindToEmails < ActiveRecord::Migration[5.1]
  def change
    add_column :emails, :kind, :interger, default: 0
    add_index :emails, :kind
  end
end
