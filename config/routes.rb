Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to:'static_pages#about'
  get 'admins/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
