class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


def search

	@movies =  Movie.search(params[:s])
	@actors =  Actor.search(params[:s])
	@directors =  Director.search(params[:s])
	@topics =  Topic.search(params[:s])
	@users =  User.search(params[:s])

	@result = @movies + @actors + @directors + @topics + @users
end



end
