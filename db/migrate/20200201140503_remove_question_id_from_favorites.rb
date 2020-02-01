class RemoveQuestionIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :question_id, :integer
    add_column :favorites, :answer_id, :integer
  end
end
