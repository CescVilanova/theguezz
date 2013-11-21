class UsersController < ApplicationController
  
  def new
    @user = User.new
    @club = Club.find params[:club_id]
  end
  
  def create
    @club = Club.find params[:club_id]
    @user = User.new params[user_params]
    @user.selected_club_id = @club
    
    if @user.save
      redirect_to welcome_registered_path
    else
      render :new
    end
  end
  
  def index
    @users = User.all
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :selected_club)
  end
  
end
