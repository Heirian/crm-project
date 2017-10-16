class AddPlaceIdIndexToAddress < ActiveRecord::Migration[5.1]
  def change
    add_index :addresses, :place_id
  end
end
