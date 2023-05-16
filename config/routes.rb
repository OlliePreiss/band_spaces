Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")

  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Bandspaces Routes

  # Read
  # route to display all bandspaces for browing
  get "/bandspaces", to: "bandspaces#index"
  # route to display a single bandspace and its information
  get 'bandspaces/:id', to: 'bandspaces#show', as: :bandspace

  # Create
  # the create a new bandspace page/form
  get 'bandspaces/new', to: 'bandspaces#new'
  # the route to create a new bandspace so it persists
  post 'bandspaces', to: 'bandspaces#create'

  # Update
  # get the edit form for a bandspace
  get "bandspaces/:id/edit", to: "bandspaces#edit"
  # perform the actual patch/update of a bandspace
  patch "bandspaces/:id", to: "bandspaces#update"

  # Delete
  # deletes the bandspace :O
  delete "bandspaces/:id", to: "bandspaces#destroy"
end
