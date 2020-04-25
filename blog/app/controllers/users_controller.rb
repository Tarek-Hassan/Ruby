class UsersController < ApplicationController
  def register
    @user = User.new
  end
  def login
    @user=User.find_user_by(user_params)
    if @user != nil
      redirect_to articles_path
    else
      render 'register'
    end
  end

  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to articles_path
    else
      render 'register'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  

    
end
