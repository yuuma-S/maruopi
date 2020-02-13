class RemoveQuestionFromQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :answer_id, :interger
  end
end
