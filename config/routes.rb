Rails.application.routes.draw do
  get 'sessions/new'

  get 'clenie/index'

  get 'robs/new'
  #get 'users/show'
  post 'users/new'
  resources :robs do
    collection do
      post :confirm
    end
  end
  
  
  resources :users
  resources :robs
  #post 'destroy/index'
  resources :robs, only: [:new, :create, :show, :edit]
  #post 'destroy/index'
  resources :users, only: [:new, :show, :edit, :update,]
  resources :sessions, only: [:new, :create, :edit, :destroy]
  resources :robs
  #
  end
