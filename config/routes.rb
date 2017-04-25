Rails.application.routes.draw do
  resources :tags do
     resources :pins, only: [:show, :index]
   end

  resources :users, only: [:show] do
     resources :pins, only: [:show, :index]
   end

   resources :users, only: [:show] do
      resources :comments, only: [:index]
    end

   resources :users, only: [:show] do
       resources :pin_endorsements, only: [:index]
    end

  resources :users
  resources :pins
  resources :pin_tags
  resources :pin_endorsements
  resources :comments
  resources :sessions, only: [:new, :create, :destroy]

  root 'static#index'
  get '/auth/facebook/callback' => 'sessions#create_facebook'
  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'

  get '/test', to: 'pins#test'
  delete 'logout', to: 'sessions#destroy'
  patch '/admins/approve_admin', to: 'admins#approve_admin'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
