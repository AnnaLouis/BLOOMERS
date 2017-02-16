class ChangeFieldsToBloomers < ActiveRecord::Migration[5.0]
  def change
    add_column :bloomers, :gen_apply_link, :string
    add_column :bloomers, :video, :string
    add_column :bloomers, :facebook, :string
    remove_column :programs, :video, :string
  end
end
