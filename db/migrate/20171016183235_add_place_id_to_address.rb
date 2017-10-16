class AddPlaceIdToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :place_id, :integer
  end
end
