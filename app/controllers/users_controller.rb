# @Author: Alex Fultz <Fultzy>
# @Date:   20-Aug-2021 (14:08)
# @Last modified by:   Fultzy
# @Last modified time: 23-Aug-2021 (10:08)


class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username,:email, :password)
  end

end
