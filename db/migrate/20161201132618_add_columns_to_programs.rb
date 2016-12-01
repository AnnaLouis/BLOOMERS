class AddColumnsToPrograms < ActiveRecord::Migration[5.0]
  def change
    add_column :programs, :individual_coaching, :text
    add_column :programs, :collective_coachin, :text
    add_column :programs, :ecosystem, :text
    add_column :programs, :advantages, :text
    add_column :programs, :selection_criterias, :text
  end
end
