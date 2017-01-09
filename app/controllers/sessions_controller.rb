class SessionsController < ApplicationController
  def new
  end

  def current_user
  	User.find_by(id: session[:user_id])
  end

  def create
  	user = User.where(email: params[:session][:email].downcase).first
  	if user.password == params[:session][:password]
  		session[:user_id] = user.id
  		flash[:alert] = "Hello"
  		redirect_to user
  	else
  	render 'new'
end
end

def destroy
	session[:user_id] = nil
	redirect_to '/'
end

end