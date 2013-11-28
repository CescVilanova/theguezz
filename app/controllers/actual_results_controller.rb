class ActualResultsController < ApplicationController

  def new
    @user = User.find params[:user_id]
    @actual_result = ActualResult.new
  end
  
end
