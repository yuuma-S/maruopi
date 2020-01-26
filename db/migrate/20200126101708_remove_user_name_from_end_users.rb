class RemoveUserNameFromEndUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :end_users, :name_kana, :integer
    remove_column :end_users, :name_kanji, :integer
  end
end
