class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to new_character_path, notice: "Great! You should create a character next."
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end

end
