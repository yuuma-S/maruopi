class RemoveQuestionFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_id, :interger
    add_column :questions, :answer_id, :interger
  end
end
