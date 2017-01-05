class UsersController < ApplicationController
 

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create (user_params)
    redirect_to @user
  end

  def read
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end

end
