class MoviesController < ApplicationController

  def show_all
    @list_of_movies = Movie.all

  end

  def show_one
    @movie = Movie.find_by({ :id => params[:id]})

  end

  def new_form
  end

  def add
    m = Movie.new
    m.title = params[:add_title]
    m.year = params[:add_year]
    m.duration = params[:add_duration]
    m.description = params[:add_description]
    m.image_url = params[:add_image_url]
    m.save

    redirect_to("/movies")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id]})

  end

  def update_movie
    m = Movie.find_by({ :id => params[:id]})
    m.title = params[:new_title]
    m.year = params[:new_year]
    m.duration = params[:new_duration]
    m.description = params[:new_description]
    m.image_url = params[:new_image_url]
    m.save

    redirect_to("/movies/#{m.id}")
  end

  def destroy
    m = Movie.find_by({ :id => params[:id]})
    m.destroy

    redirect_to("/movies")
  end


end
