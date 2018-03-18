Rails.application.routes.draw do
  get 'sessions/new'

  get 'clenie/index'

  #get 'robs/index'

 
  resources :robs
  #post 'destroy/index'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  end
