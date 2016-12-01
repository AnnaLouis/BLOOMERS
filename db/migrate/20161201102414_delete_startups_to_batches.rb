class DeleteStartupsToBatches < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:batches, :startup, index: true, foreign_key: true)
  end
end
