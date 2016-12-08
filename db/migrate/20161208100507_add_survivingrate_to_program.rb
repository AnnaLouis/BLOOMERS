class AddSurvivingrateToProgram < ActiveRecord::Migration[5.0]
  def change
    add_column :programs, :surviving_rate, :integer
  end
end
