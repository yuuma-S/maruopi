class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :end_user_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
