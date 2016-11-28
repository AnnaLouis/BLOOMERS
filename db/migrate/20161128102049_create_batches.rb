class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batchs do |t|
      t.date :batch_start
      t.date :batch_end
      t.references :startups, foreign_key: true
      t.string :name
      t.references :bloomer, foreign_key: true

      t.timestamps
    end
  end
end
