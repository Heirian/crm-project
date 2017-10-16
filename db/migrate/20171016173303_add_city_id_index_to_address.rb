class AddCityIdIndexToAddress < ActiveRecord::Migration[5.1]
  def change
    add_index :addresses, :city_id
  end
end
