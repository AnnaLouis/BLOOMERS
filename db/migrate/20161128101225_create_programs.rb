class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :short_description
      t.text :description
      t.string :duration
      t.integer :price
      t.boolean :equity
      t.references :bloomer, foreign_key: true

      t.timestamps
    end
  end
end
