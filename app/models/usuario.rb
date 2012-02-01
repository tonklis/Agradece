class Usuario < ActiveRecord::Base
	has_many :entries
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable, :validatable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

	def self.find_for_twitter_oauth(auth_hash)
		usuario = Usuario.find_by_twitter_id auth_hash["uid"]
		if not usuario
			usuario = Usuario.new
			usuario.twitter_id = auth_hash["uid"]
			usuario.name = auth_hash["info"]["name"]
			usuario.email = auth_hash["info"]["nickname"]
			usuario.save!
		end
		return usuario		
	end

end
