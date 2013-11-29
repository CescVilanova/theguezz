class ActualResultsController < ApplicationController

  def new
    @user = User.find params[:user_id]
    @actual_result = ActualResult.new
  end
  
  def create
    @user = User.find params[:user_id]
    @actual_result = @user.actual_results.build actual_result_params 
      
    if @actual_result.save
      redirect_to users_index_path
    else
      render :new
    end
  end
  
  private 
  
  def actual_result_params
    params.require(:actual_result).permit(:user_id, :match_id, :final_score, :first_goal, :best_defender, :best_midfielder, 
      :best_forward, :time_of_first_goal, :ball_possession, :yellow_cards)
  end
  
end