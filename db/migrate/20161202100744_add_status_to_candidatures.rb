class AddStatusToCandidatures < ActiveRecord::Migration[5.0]
  def change
    add_column :candidatures, :status, :string
  end
end
