class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_back_or_to projects_url, :notice => "Signed up!"
    else
      render :new, :notice => "Try again"
    end
  end

  def show
    @user = User.find(params[:id])

    @owned = current_user.initiative
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end


