class AddDetailsToStartups < ActiveRecord::Migration[5.0]
  def change
    add_column :startups, :team, :text
    add_column :startups, :your_problem, :text
    add_column :startups, :your_solution, :text
    add_column :startups, :your_market, :text
    add_column :startups, :phone_number, :integer
  end
end
