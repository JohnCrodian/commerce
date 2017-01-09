class UsersController < ApplicationController
 
 before_action :set_user, only: [:show, :edit, :update, :destroy]


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
      if @user.save
    Wishlist.create(user_id: @user.id)
    redirect_to @user
    flash[:notice] = "Successfully created account"
  else
    flash[:alert] = "Wrong"
    render new_user_path
  end
end

  def read
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])

  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

  def set_user 
    @user = User.find(params[:id])
  end

  def create_users_cart
    Cart.create(user_id: @user.id)
  end
    

end
