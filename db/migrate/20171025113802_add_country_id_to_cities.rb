class AddCountryIdToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :country_id, :interger
    add_index :cities, :country_id
  end
end
