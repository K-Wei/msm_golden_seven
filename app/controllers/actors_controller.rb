class ActorsController < ApplicationController
  def show_all
    @list_of_actors = Actor.all

  end

  def show_one
    @actor = Actor.find_by({ :id => params[:id]})

  end

  def new_form
  end

  def add
    a = Actor.new
    a.name = params[:add_name]
    a.bio = params[:add_bio]
    a.dob = params[:add_dob]
    a.image_url = params[:add_image_url]
    a.save

    redirect_to("/actors")
  end

  def edit_form
    @actor = Actor.find_by({ :id => params[:id]})

  end

  def update_actor
    a = Actor.find_by({ :id => params[:id]})
    a.name = params[:new_name]
    a.bio = params[:new_bio]
    a.dob = params[:new_dob]
    a.image_url = params[:new_image_url]
    a.save

    redirect_to("/actors/#{a.id}")
  end

  def destroy
    a = Actor.find_by({ :id => params[:id]})
    a.destroy

    redirect_to("/actors")
  end

end
