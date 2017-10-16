class AddCountryIdIndexToState < ActiveRecord::Migration[5.1]
  def change
    add_index :states, :country_id
  end
end
