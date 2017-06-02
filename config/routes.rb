Rails.application.routes.draw do
  
  resources :courses do
    resources :grades
  end
  
  resources :grades
  resources :courses
  
  get 'sessions/new'

  root 'static_pages#welcome'
  get 'static_pages/welcome'
  get 'static_pages/home'
  
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
end
