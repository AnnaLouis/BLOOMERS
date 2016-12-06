class RemoveFieldsToCandidatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidatures, :team
    remove_column :candidatures, :your_problem
    remove_column :candidatures, :your_solution
    remove_column :candidatures, :your_market
    remove_column :candidatures, :phone_number
  end
end
