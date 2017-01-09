class CartsController < ApplicationController
def index
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
    @cart = Cart.find(params[:cart_id])
    @cart.products =[]
    redirect_back(fallback_location: '/')
  end

  def destroy
  end


end
