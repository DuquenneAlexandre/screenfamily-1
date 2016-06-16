Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'pages#home'


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show, :update] do
    resources :reviews, only: [:new, :create]
    member do

      get 'profile', to: 'users#profile'
      get 'profile/edit', to: 'users#edit'
    end
  end

  # get '/profile', to: 'pages#profile'
  #
  # resources :projects, only: [:index, :show, :new, :create, :edit, :update]
  # get '/projects/:id/disable', to: 'users#disable'

  resources :projects do
    collection do
      match 'search' => 'projects#index', :via => [:get, :post], :as => :search
    end
    resources :messages, only: [:create]
    resources :reviews, only: [:new, :create]
  resources :roles, only: [:index, :new, :create, :edit, :update]
  resources :pledges, only: [:index, :new, :create]
    member do
      put 'join', to: 'projects#join_project'
    end
  end



end
