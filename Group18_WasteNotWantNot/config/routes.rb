Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_page#home'

  get '/help', to: 'static_page#help'
  get '/about', to: 'static_page#about'
  get '/homepage', to: 'static_page#homepage'
  get '/contact', to: 'static_page#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/affiliated', to: 'static_page#affiliated'
  resources :users
  resources :recipes


end
