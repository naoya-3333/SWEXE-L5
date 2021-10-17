Rails.application.routes.draw do
  root 'tweets#index'
  get 'top/main'
  get 'top/logout'
  resources :top
  resources :users
  resources :tweets
  post 'top/login'
  get 'top/logout'
  get 'tweets/index'
  end
