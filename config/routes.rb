Rails.application.routes.draw do
  root 'sessions#new'
  get '/home', to:'static_pages#home'
  get '/about', to:'static_pages#about'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources reservations, only: [:index, :show] do
    collection do
      get :search
    end
  end

  resources parchases, only:[:index, :show]
  resources users

  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
