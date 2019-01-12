Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :frames
      # resources :users, only: [:create, :update] do
      post '/login', to: 'auth#create'
      get '/homepage', to: 'users#homepage'
      resources :users do
        resources :photos
        resources :photobooth_frame_sessions
        resources :photobooth_sessions
        resources :photobooth_scenario_sessions
        resources :scenario_missions
      end
    end
  end
end