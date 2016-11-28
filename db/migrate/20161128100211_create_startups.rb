class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :short_description
      t.text :description
      t.date :date_creation
      t.string :twitter_account
      t.string :website
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
