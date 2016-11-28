class CreateBloomers < ActiveRecord::Migration[5.0]
  def change
    create_table :bloomers do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :category
      t.string :website
      t.string :email
      t.string :address
      t.string :speciality
      t.date :date_creation
      t.text :description
      t.string :twitter_account

      t.timestamps
    end
  end
end
