class UsersController < ApplicationController
  
  def new
    @user = User.new
    @club = Club.find params[:club_id]
  end
  
  def create
    @club = Club.find params[:club_id]
    @user = @club.users.build(user_params)
    @user.selected_club_id = params[:club_id]
    
    if @user.save
      UserMailer.welcome_email(@user).deliver
      UserMailer.new_user(@user).deliver
      redirect_to welcome_registered_path
    else
      render :new
    end
  end
  
  def index
    @users = User.all.order(score: :desc)
    @actual_result = Match.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to users_index_path
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_index_path
    else
      render :edit
    end
  end  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :selected_club_id)
  end
  
end