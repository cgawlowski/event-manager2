class RemovePublishedFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :published, :boolean
  end
end
