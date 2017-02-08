Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #homepage
  get("/", { :controller => "homepages", :action => "index" })

  # DIRECTORS
  # Routes to CREATE directors
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/directors/add", { :controller => "directors", :action => "add" })

  # Routes to READ directors
  get("/directors", { :controller => "directors", :action => "show_all" })
  get("/directors/:id", { :controller => "directors", :action => "show_one" })

  # Routes to UPDATE directors
  get("directors/edit/:id", { :controller => "directors", :action => "edit_form"})
  get("directors/update/:id", { :controller => "directors", :action => "update_director"})

  # Routes to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

  # ACTORS
  # Routes to CREATE actors
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/actors/add", { :controller => "actors", :action => "add" })

  # Routes to READ actors
  get("/actors", { :controller => "actors", :action => "show_all" })
  get("/actors/:id", { :controller => "actors", :action => "show_one" })

  # Routes to UPDATE actors
  get("actors/edit/:id", { :controller => "actors", :action => "edit_form"})
  get("actors/update/:id", { :controller => "actors", :action => "update_actor"})

  # Routes to DELETE actors
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})


  # MOVIES
  # Routes to CREATE movies
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/movies/add", { :controller => "movies", :action => "add" })

  # Routes to READ movies
  get("/movies", { :controller => "movies", :action => "show_all" })
  get("/movies/:id", { :controller => "movies", :action => "show_one" })

  # Routes to UPDATE movies
  get("movies/edit/:id", { :controller => "movies", :action => "edit_form"})
  get("movies/update/:id", { :controller => "movies", :action => "update_movie"})

  # Routes to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy"})


end
