class UsuariosController < ApplicationController
  before_filter :authenticate_usuario!

  def index
		valida_usuario
    @usuarios = Usuario.all
  end

  def show
		valida_usuario
    @usuario = Usuario.find(params[:id])
  end

  def new
		valida_usuario
    @usuario = Usuario.new
  end

  def create
		valida_usuario
    @usuario = Usuario.new(params[:usuario])
    if @usuario.save
      redirect_to @usuario, :notice => "Successfully created usuario."
    else
      render :action => 'new'
    end
  end

  def edit
		valida_usuario
    @usuario = Usuario.find(params[:id])
  end

  def update
		valida_usuario
    @usuario = Usuario.find(params[:id])
    if @usuario.update_attributes(params[:usuario])
      redirect_to @usuario, :notice  => "Successfully updated usuario."
    else
      render :action => 'edit'
    end
  end

  def destroy
		valida_usuario
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    redirect_to usuarios_url, :notice => "Successfully destroyed usuario."
  end

	def valida_usuario
		usuario = Usuario.find_by_twitter_id(session["devise.uid"])
		if not usuario.email == "tonklis"
			redirect_to entries_url, :notice => "Invalid user."
		end
	end

end
