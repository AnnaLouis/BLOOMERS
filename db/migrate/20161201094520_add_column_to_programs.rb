class AddColumnToPrograms < ActiveRecord::Migration[5.0]
  def change
    add_column :programs, :candidature_open, :date
    add_column :programs, :candidature_close, :date
  end
end
