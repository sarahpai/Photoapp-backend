Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :photos
      resources :users
      # resources :users, only: [:create, :update, :show] do
        post '/login', to: 'auth#create'
        post '/signup', to: 'auth#create'
        get '/homepage', to: 'users#homepage'
      end
    end
  end
# end