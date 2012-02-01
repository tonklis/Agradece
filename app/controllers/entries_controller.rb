class EntriesController < ApplicationController
	before_filter :authenticate_usuario!

  def index
    @entries = Usuario.find_by_twitter_id(session["devise.uid"]).entries
  end

  def show
		valida_entry(params[:id], session["devise.uid"])
  end

  def new
    @entry = Entry.new
		@entry.usuario_id = Usuario.find_by_twitter_id(session["devise.uid"]).id
  end

  def create
    @entry = Entry.new(params[:entry])
		@entry.usuario_id = Usuario.find_by_twitter_id(session["devise.uid"]).id
    if @entry.save
      redirect_to @entry, :notice => "Successfully created entry."
    else
      render :action => 'new'
    end
  end

  def edit
		valida_entry(params[:id], session["devise.uid"])
  end

  def update
		valida_entry(params[:id], session["devise.uid"])
    if @entry.update_attributes(params[:entry])
      redirect_to @entry, :notice  => "Successfully updated entry."
    else
      render :action => 'edit'
    end
  end

  def destroy
		valida_entry(params[:id], session["devise.uid"])
    @entry.destroy
    redirect_to entries_url, :notice => "Successfully destroyed entry."
  end

	def valida_entry entry_id, usuario_id
		entry = Entry.find(entry_id)
		if entry.usuario_id == Usuario.find_by_twitter_id(usuario_id).id
			@entry = entry
		else
			redirect_to entries_url, :notice => "The entry is from another user."
		end
	end
end
