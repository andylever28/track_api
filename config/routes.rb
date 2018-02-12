Rails.application.routes.draw do
  resources :league_years
  resources :sports
  resources :leagues
  resources :teams
  post '/sports/bulkcreate', to: 'sports#bulk_create'
end
