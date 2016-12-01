class AddColumnToCandidatures < ActiveRecord::Migration[5.0]
  def change
    add_column :candidatures, :team, :text
    add_column :candidatures, :short_description, :text
    add_column :candidatures, :your_problem, :text
    add_column :candidatures, :your_solution, :text
    add_column :candidatures, :your_market, :text
    add_column :candidatures, :description, :text
    add_column :candidatures, :phone_number, :integer
  end
end
