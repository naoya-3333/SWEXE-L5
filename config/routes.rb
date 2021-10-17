Rails.application.routes.draw do
  
  root 'tweets#index'
  get 'likes/create'
  get 'top/main'
  get 'top/logout'
  post 'likes/create'
  delete 'likes/destroy/', to: 'likes#destroy'
  resources :top
  resources :users
  resources :tweets
  post 'top/login'
  get 'top/logout'
  end
