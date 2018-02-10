Rails.application.routes.draw do
  # resources :sports
  resources :leagues
  resources :teams
  post '/sports/bulkcreate', to: 'sports#bulk_create'
end
