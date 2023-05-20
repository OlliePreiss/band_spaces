Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")

  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # BandSpaces Routes

  # # Read
  # # route to display all bandspaces for browing
  # get "/band_spaces", to: "bandspaces#index"
  # # route to display a single bandspace and its information
  # get 'band_spaces/:id', to: 'bandspaces#show', as: :bandspace

  # # Create
  # # the create a new bandspace page/form
  # get 'band_spaces/new', to: 'bandspaces#new'
  # # the route to create a new bandspace so it persists
  # post 'band_spaces', to: 'bandspaces#create'

  # # Update
  # # get the edit form for a bandspace
  # get "band_spaces/:id/edit", to: "bandspaces#edit"
  # # perform the actual patch/update of a bandspace
  # patch "band_spaces/:id", to: "bandspaces#update"

  # # Delete
  # # deletes the bandspace :O
  # delete "band_spaces/:id", to: "bandspaces#destroy"
  resources :band_spaces do
    resources :bookings #to be refactored once routes have been finalised
  end
end
