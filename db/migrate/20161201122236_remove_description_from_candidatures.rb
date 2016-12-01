class RemoveDescriptionFromCandidatures < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidatures, :short_description, :string
  end
end
