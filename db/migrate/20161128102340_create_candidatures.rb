class CreateCandidatures < ActiveRecord::Migration[5.0]
  def change
    create_table :candidatures do |t|
      t.string :status
      t.date :start_date
      t.date :preselection_date
      t.date :end_date
      t.references :startup, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
