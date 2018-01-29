class AddMainToEmails < ActiveRecord::Migration[5.1]
  def change
    add_column :emails, :main, :boolean, default: false
  end
end
