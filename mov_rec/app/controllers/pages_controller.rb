class PagesController < ApplicationController
	before_filter :authenticate
	def home 
		render("home")
	end

end