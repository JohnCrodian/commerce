class ProductsController < ApplicationController
  
  def index
  @products = Product.all
    if params[:search]
        @products = search(params[:search])
    else
        @products = Product.all
      end
  end

  def show

  end

  def new
  end

  def create
  end

  def read
  end

  def update
  end

  def destroy
  end

  def add_to_cart
    @product = Product.find(params[:product_id])
    @user = User.find(session[:user_id])
    ProductAdd.create(cart_id: @user.cart.id, product_id: @product.id)
    redirect_to products_path
  end

  def add_to_wishlist
    @product = Product.find(params[:product_id])
    @user = User.find(session[:user_id])
    WishAdd.create(wishlist_id: @user.wishlist.id, product_id: @product.id)
    redirect_to products_path
  end

  def search (term)

   Product.where("name LIKE (?) OR category LIKE (?)", "%#{term}%", "%#{term}%")
end
end
