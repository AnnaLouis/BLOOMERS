class RemoveColumnToCandidatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidatures, :preselection_date, :date
  end
end
