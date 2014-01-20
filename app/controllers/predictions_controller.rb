class PredictionsController < ApplicationController
  
  def new
    @user = User.find params[:user_id]
    @match = Match.find(params[:match_id])
    @answer = Answer.new
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
  
  def edit
    @prediction = Prediction.find(params[:id])
  end
  
  def update
    @prediction = Prediction.find(params[:id])
    if @prediction.update_attributes(params[:id])
      redirect_to @prediction
    else
      flash[:error] = "Error saving prediction. Please try again."
      render :edit
    end
  end
    
  private 
  
  def prediction_params
    params.require(:prediction).permit(:user_id, :match_id, :question, :user_prediction, :real_result, :prediction_points)
  end
  
end
