class RemoveColumnsToCandidatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidatures, :start_date, :date
    remove_column :candidatures, :end_date, :date
  end
end
