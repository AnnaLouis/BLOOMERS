class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.boolean :hidden
      t.text :comment
      t.references :user, foreign_key: true
      t.references :bloomer, foreign_key: true

      t.timestamps
    end
  end
end
