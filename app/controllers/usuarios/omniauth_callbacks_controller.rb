class Usuarios::OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def twitter
		@usuario = Usuario.find_for_twitter_oauth(auth_hash)
		sign_in @usuario
		session["devise.uid"] = auth_hash["uid"]
		redirect_to entries_url
	end

	def auth_hash
    request.env['omniauth.auth']
  end

end
