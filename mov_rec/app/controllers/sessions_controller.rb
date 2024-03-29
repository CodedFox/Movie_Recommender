class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to "/home"
    end
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		# log user in and redirect to user's show page
  		log_in user
  		redirect_to "/home"
  	else
  		# create an error message
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end

end

