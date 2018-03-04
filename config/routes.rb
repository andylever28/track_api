Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :teams
  resources :games
  resources :league_years
  resources :sports
  resources :leagues
  post '/sports/bulkcreate', to: 'sports#bulk_create'
end
