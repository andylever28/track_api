Rails.application.routes.draw do
  resources :teams
  resources :games
  resources :league_years
  resources :sports
  resources :leagues
  post '/sports/bulkcreate', to: 'sports#bulk_create'
end
