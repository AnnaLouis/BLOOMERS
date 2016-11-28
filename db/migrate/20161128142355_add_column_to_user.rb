class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :startup_admin, :boolean
    add_column :users, :bloomer_admin, :boolean
  end
end
