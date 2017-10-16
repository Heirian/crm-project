class AddPersonIdIndexToAddress < ActiveRecord::Migration[5.1]
  def change
    add_index :addresses, :person_id
  end
end
