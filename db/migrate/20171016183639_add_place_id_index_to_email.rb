class AddPlaceIdIndexToEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :emails, :place_id
  end
end
