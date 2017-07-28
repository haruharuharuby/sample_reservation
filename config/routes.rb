Rails.application.routes.draw do
  root 'sessions#new'
  get '/home', to:'static_pages#home'
  get '/resevation', to:'static_pages#resevation'
  get 'admins/new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/staff', to: 'users#index'
  get '/users/:id', to: 'users#show'
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
