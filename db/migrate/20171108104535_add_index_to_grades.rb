class AddIndexToGrades < ActiveRecord::Migration[5.1]
  def change
    add_index :grades, :name
    add_index :grades, :category
  end
end
