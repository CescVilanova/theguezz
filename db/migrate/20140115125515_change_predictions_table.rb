class ChangePredictionsTable < ActiveRecord::Migration
  def change
    change_table :predictions do |t|
      t.remove :final_score, :first_goal, :best_defender, :best_midfielder,
      :best_forward, :time_of_first_goal, :ball_possession, :yellow_cards
      t.string :question
      t.string :user_prediction
      t.string :real_result
      t.integer :prediction_points
    end
  end
end
