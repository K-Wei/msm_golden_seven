class DirectorsController < ApplicationController

  def show_all
    @list_of_directors = Director.all

  end

  def show_one
    @director = Director.find_by({ :id => params[:id]})

  end

  def new_form
  end

  def add
    d = Director.new
    d.name = params[:add_name]
    d.bio = params[:add_bio]
    d.dob = params[:add_dob]
    d.image_url = params[:add_image_url]
    d.save

    redirect_to("/directors")
  end

  def edit_form
    @director = Director.find_by({ :id => params[:id]})

  end

  def update_director
    d = Director.find_by({ :id => params[:id]})
    d.name = params[:new_name]
    d.bio = params[:new_bio]
    d.dob = params[:new_dob]
    d.image_url = params[:new_image_url]
    d.save

    redirect_to("/directors/#{d.id}")
  end

  def destroy
    d = Director.find_by({ :id => params[:id]})
    d.destroy

    redirect_to("/directors")
  end

end
