class PredictionsController < ApplicationController
  
  def new
    @user = User.find params[:user_id]
    @prediction = Prediction.new
  end
  
  def create
    @user = User.find params[:user_id]
    @prediction = @user.predictions.build prediction_params 
      
    if @prediction.save
      redirect_to users_index_path
    else
      render :new
    end
  end
  
  private 
  
  def prediction_params
    params.require(:prediction).permit(:user_id, :match_id, :final_score, :first_goal, :best_defender, :best_midfielder, 
      :best_forward, :time_of_first_goal, :ball_possession, :yellow_cards)
  end
  
end
