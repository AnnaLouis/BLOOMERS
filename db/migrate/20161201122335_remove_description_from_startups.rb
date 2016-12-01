class RemoveDescriptionFromStartups < ActiveRecord::Migration[5.0]
  def change
    add_column :candidatures, :question_incubation, :text
  end
end
