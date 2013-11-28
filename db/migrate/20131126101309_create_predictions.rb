class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :match_id
      t.string :final_score
      t.string :first_goal
      t.string :best_defender
      t.string :best_midfielder
      t.string :best_forward
      t.string :time_of_first_goal
      t.string :ball_possession
      t.string :yellow_cards
      t.timestamps
    end
  end
end
