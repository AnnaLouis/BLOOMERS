class RemoveStartupFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_reference :reviews, :startup, foreign_key: true
  end
end
