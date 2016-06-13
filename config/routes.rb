Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  resources :users, only: [:show, :edit, :update]

  # get '/profile', to: 'pages#profile'
  #
  # resources :projects, only: [:index, :show, :new, :create, :edit, :update]
  # get '/projects/:id/disable', to: 'users#disable'

  resources :projects do
  	collection do
      get :search, :action => "search_project", :as => "search_project"
      get "search/:city", :action => "search", :as => "search"
    end
  resources :roles, only: [:index, :new, :create, :edit, :update]
  resources :pledges, only: [:index, :new, :create]
  end

  resources :reviews, only: [:new, :create]

end
