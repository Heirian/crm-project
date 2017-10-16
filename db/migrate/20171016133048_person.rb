class Person < ActiveRecord::Migration[5.1]
  def change
    create_table :persons do |t|
      t.timestamps
    end
  end
end
