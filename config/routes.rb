Rails.application.routes.draw do
  get 'payments/new'

  get 'orders/show'

  ActiveAdmin.routes(self)
  root to: 'pages#home'


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show, :update] do
    resources :reviews, only: [:new, :create]
    member do
      get 'profile', to: 'users#profile'
      get 'profile/edit', to: 'users#edit'
      put 'profile/update', to: 'users#update'
    end
  end

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
      get 'set_crowdfunded', to: 'projects#set_crowdfunded'
      get 'set_disabled', to: 'projects#set_disabled'
      get 'set_inprogress', to: 'projects#set_inprogress'
      get 'set_finished', to: 'projects#set_finished'
    end
  end

resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
end

end
