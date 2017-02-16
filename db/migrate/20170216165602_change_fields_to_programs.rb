class ChangeFieldsToPrograms < ActiveRecord::Migration[5.0]
  def change
    add_column :programs, :batch_start, :datetime
    remove_column :programs, :surviving_rate
    remove_column :programs, :ecosystem
    remove_column :programs, :advantages
    add_column :programs, :video, :string
    add_column :programs, :apply_link, :string
    remove_column :programs, :short_description
    add_column :programs, :selection_criterias_one, :string
    add_column :programs, :selection_criterias_two, :string
    add_column :programs, :selection_criterias_three, :string
    add_column :programs, :selection_criterias_four, :string
    add_column :programs, :selection_criterias_five, :string
    add_column :programs, :individual_coaching_one, :string
    add_column :programs, :individual_coaching_two, :string
    add_column :programs, :individual_coaching_three, :string
    add_column :programs, :individual_coaching_four, :string
    add_column :programs, :individual_coaching_five, :string
    add_column :programs, :collective_coaching_one, :string
    add_column :programs, :collective_coaching_two, :string
    add_column :programs, :collective_coaching_three, :string
    add_column :programs, :collective_coaching_four, :string
    add_column :programs, :collective_coaching_five, :string
  end
end
