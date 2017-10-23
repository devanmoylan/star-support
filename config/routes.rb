Rails.application.routes.draw do

  # Root
  root to: 'visitors#index'

  # Users
  devise_for :users
  resources :users
  get '/dashboard/:id', to: 'users#dashboard', as: 'dashboard'

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end


end
