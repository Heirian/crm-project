class AddPersonIdIndexToEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :emails, :person_id
  end
end
