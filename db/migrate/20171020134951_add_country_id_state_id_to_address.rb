class AddCountryIdStateIdToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :country_id, :integer, index: true
    add_column :addresses, :state_id, :integer, index: true
  end
end
