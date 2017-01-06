class UsersController < ApplicationController
 

  def index

  end

  def show
    @cartproducts = User.find(params[:id]).cart.products
    @wishlistproducts = User.find(params[:id]).wishlist.products
    @carttotal = 0
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create (user_params)
    Wishlist.create(user_id: @user.id)
    Cart.create(user_id: @user.id)
    redirect_to @user
  end

  def read
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])

  end

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end

end
