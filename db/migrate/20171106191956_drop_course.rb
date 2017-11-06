class DropCourse < ActiveRecord::Migration[5.1]
  def change
    drop_table :courses
  end
end
