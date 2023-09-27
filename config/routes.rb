Rails.application.routes.draw do
  get 'passwords_resets/new'
  get 'passwords_resets/edit'
  root "static_pages#home"

  # Static pages
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # Users
  resources :users
  get '/signup', to: 'users#new'

  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Account activation
  resources :account_activations, only: [:edit]

  # Password resets
  resources :passwords_resets, only: [:new, :create, :edit, :update]

  #microposts
  resources :microposts, only: [:create, :destroy]
  get '/microposts', to: 'static_pages#home'
end
