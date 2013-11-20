class UsersController < ApplicationController
  
  def new
    @user = User.new
    @club_id = params[:club_id]
  end
  
  def create
    @user =User.new(params[:user])
    if @user.save 
         @match = Match.new(:user_id => @user.id, :club_id => params[:club_id])
      redirect_to "welcome#index"
    else
      render :new
    end
  end
  
end
