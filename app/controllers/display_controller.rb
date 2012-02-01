class DisplayController < ApplicationController

	before_filter :authenticate_usuario!, :except => [:index]

	def index	
		@usuario = Usuario.find_by_twitter_id(session["devise.uid"])
	end

end
