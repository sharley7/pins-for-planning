Rails.application.routes.draw do
  resources :tags
  resources :users
  resources :pins
  resources :pin_tags
  resources :pin_endorsements
  resources :comments
  resources :boards
  root 'static#index'
  get '/auth/facebook/callback' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
