Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to:'static_pages#about'
  get 'admins/new'

  get 'admin/new'

  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
