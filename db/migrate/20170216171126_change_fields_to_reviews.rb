class ChangeFieldsToReviews < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :reviews, column: :user_id
    add_column :reviews, :startup_name, :string
  end
end
