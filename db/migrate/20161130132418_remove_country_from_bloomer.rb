class RemoveCountryFromBloomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :bloomers, :country, :string
  end
end
