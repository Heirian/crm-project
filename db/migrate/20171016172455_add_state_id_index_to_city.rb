class AddStateIdIndexToCity < ActiveRecord::Migration[5.1]
  def change
    add_index :cities, :state_id
  end
end
