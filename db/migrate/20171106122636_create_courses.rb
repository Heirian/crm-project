class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.references :product, foreign_key: true
      t.integer :courseLoad

      t.timestamps
    end
  end
end
