class AddMainToPhones < ActiveRecord::Migration[5.1]
  def change
    add_column :phones, :main, :boolean, default: false
  end
end
