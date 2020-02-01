class RemoveFollewingIdFromRelationshios < ActiveRecord::Migration[5.2]
  def change
    remove_column :relationships, :follewing_id, :integer
    add_column :relationships, :following_id, :integer
  end
end
