Rails.application.routes.draw do
  get 'tweets/index'
  resources :users
  root 'tweets#index'
  resources :tweets
  end
