Rails.application.routes.draw do

  # Root
  root to: 'visitors#index'

  # Users:
  devise_for :users
  resources :users
  get '/dashboard/:id', to: 'users#dashboard', as: 'dashboard'

  # Conversations:
  resources :conversations, only: [:create] do
    member do
      post :close
    end
  end
  
end
