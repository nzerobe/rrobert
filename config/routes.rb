Rails.application.routes.draw do
  get 'sessions/new'

  get 'clenie/index'

  #get 'robs/index'

 
  resources :robs
  post 'destroy/index'
  resources :robs, only: [:new, :create, :show, :edit]
  #post 'destroy/index'
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :edit, :destroy]
  resources :robs
  # resources :users
  end
