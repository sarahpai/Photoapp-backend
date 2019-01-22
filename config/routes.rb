Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/homepage', to: 'users#homepage' 
      resources :users do
      resources :photos
      end
    end
  end
end 