Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile' 
      resources :users 
      resources :photos
      end
     
  end
end 