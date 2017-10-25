class AddInstantMessageToPhones < ActiveRecord::Migration[5.1]
  def change
    add_column :phones, :instant_message, :text
  end
end
