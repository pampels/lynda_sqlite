class SessionsController < ApplicationController
	skip_before_filter :authorize
  def new
  end

  def create
  	logger.info("--> #{params}")
		if user = User.authenticate(params[:username], params[:password])
			session[:user_id] = user.id
			redirect_to admin_menu_url
		else
			redirect_to login_url, :alert => "Invalid user/password combination"
		end
  end

  def destroy
  	session[:user_id] = nil
		redirect_to public_albums_url, :notice => "Logged out"
  end
end
