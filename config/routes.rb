Rails.application.routes.draw do
  resources :tags
  resources :users

  resources :users, only: [:show] do
     # nested resource for posts
     resources :pins, only: [:show, :index]
   end

  resources :pins
  resources :pin_tags
  resources :pin_endorsements
  resources :comments
  resources :boards
  resources :sessions
  resources :admin_request
  root 'static#index'
  get '/auth/facebook/callback' => 'sessions#create_facebook'
  get '/login', to: 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
