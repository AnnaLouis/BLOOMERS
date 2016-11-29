class AddCoordinatesToBloomers < ActiveRecord::Migration[5.0]
  def change
    add_column :bloomers, :latitude, :float
    add_column :bloomers, :longitude, :float
  end
end
