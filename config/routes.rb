Rails.application.routes.draw do

  root to: 'pages#home'


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show, :edit, :update] do
   get '/screener_profile', to: 'pages#screener_profile'
 end

  # get '/profile', to: 'pages#profile'
  #
  # resources :projects, only: [:index, :show, :new, :create, :edit, :update]
  # get '/projects/:id/disable', to: 'users#disable'

  resources :projects do
    collection do
      match 'search' => 'projects#index', :via => [:get, :post], :as => :search
    end
  resources :roles, only: [:index, :new, :create, :edit, :update]
  resources :pledges, only: [:index, :new, :create]
  end

  resources :reviews, only: [:new, :create]

end
