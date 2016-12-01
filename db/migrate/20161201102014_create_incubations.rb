class CreateIncubations < ActiveRecord::Migration[5.0]
  def change
    create_table :incubations do |t|
      t.references :startup, foreign_key: true
      t.references :batch, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end
