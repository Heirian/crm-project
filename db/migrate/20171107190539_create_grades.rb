class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :category
      t.string :name
      t.integer :vacancy
      t.integer :course_load

      t.timestamps
    end
  end
end
