class Phone < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :area_code
      t.string :country_code
      t.string :number
      t.references :phonable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
