class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:id])
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to login_path(user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar)
  end

end
