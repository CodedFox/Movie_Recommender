class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


def search
	@movies =  Movie.search(params[:search])
	@actors =  Actor.search(params[:search])
	@directors =  Director.search(params[:search])
	@topics =  Topic.search(params[:search])
	@users =  User.search(params[:search])

	@result = @movies + @actors + @directors + @topics + @users
end



end
