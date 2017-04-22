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

  root 'static#index'
  get '/auth/facebook/callback' => 'sessions#create_facebook'
  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'

  get '/test', to: 'pins#test'
  delete 'logout', to: 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
