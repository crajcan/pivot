Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  root 'application#front'   
  get  '/contact', :to =>   'static_pages#contact'
  get  '/help', :to =>      'static_pages#help'
  get  '/about', :to =>     'static_pages#about'
  get  '/home', :to =>      'static_pages#home'
  get  '/login', :to =>     'sessions#new'
  post '/login', :to =>     'sessions#create'
  delete '/logout', :to =>  'sessions#destroy'

  get  '/signup',:to =>     'users#new'
  post '/signup',:to =>     'users#create' 
  resources :users 
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
