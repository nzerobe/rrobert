Rails.application.routes.draw do
  get 'sessions/new'

  get 'clenie/index'

  #get 'robs/index'

 
  
  resources :robs, only: [:new, :create, :show]
  #post 'destroy/index'
  resources :users, only: [:new, :create, :show, :edit]
  resources :sessions, only: [:new, :create, :edit, :destroy]
  resources :robs
  resources :users
  end
