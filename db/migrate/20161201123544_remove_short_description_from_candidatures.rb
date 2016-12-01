class RemoveShortDescriptionFromCandidatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidatures, :description, :text
  end
end
