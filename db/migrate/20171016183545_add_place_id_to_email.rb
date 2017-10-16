class AddPlaceIdToEmail < ActiveRecord::Migration[5.1]
  def change
    add_column :emails, :place_id, :integer
  end
end
