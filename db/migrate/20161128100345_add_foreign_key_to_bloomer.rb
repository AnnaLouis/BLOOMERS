class AddForeignKeyToBloomer < ActiveRecord::Migration[5.0]
  def change
    add_reference :bloomers, :user, foreign_key: true
  end
end
