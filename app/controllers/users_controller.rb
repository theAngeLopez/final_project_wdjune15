class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to(:users, notice: 'User was successfully created')
    end
  end

  private
  def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
