class RemoveQuestionIdFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_id, :integer
    add_column :questions, :answer_id, :integer
  end
end
