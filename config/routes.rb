Rails.application.routes.draw do
  root 'sessions#new'
  get '/home', to:'static_pages#home'
  post '/search', to:'static_pages#search'
  get '/about', to:'static_pages#about'
  get '/resevation', to:'static_pages#resevation'
  get '/admins/new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/staff', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/:id/edit', to: 'users#edit'
  post '/users/:id/update', to: 'users#update'
  get '/users/:id/reshistory', to: 'users#reshistory'
  get '/users/:id/mathistory', to: 'users#mathistory'
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
