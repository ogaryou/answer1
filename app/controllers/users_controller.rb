class UsersController < ApplicationController
  def new
    @user = User.new
  end  
  def create
    user = User.new(user_params)
    if user.save
      sign_in(user)
      session[:user_id] = user.id
      flash.notice = "ログインしました！"
      redirect_to root_path
    else
      redirect_to new_user_registration_path
    end  
  end  

  def me
    
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end  
end
