class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true
      t.references :prediction, index: true
      t.string :user_answer
      t.string :actual_result
      t.string :question_points

      t.timestamps
    end
  end
end
