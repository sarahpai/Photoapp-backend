Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :frames
      resources :photos
      resources :photobooth_frame_sessions
      resources :photobooth_sessions
      resources :photobooth_scenario_sessions
      resources :scenario_missions
      
    end
  end
end