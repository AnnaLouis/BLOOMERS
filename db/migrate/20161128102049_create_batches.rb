class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.date :batch_start
      t.date :batch_end
      t.references :startup, foreign_key: true
      t.string :name
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
