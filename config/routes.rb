Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/edit'
  get 'appointments/new'
  get 'requests/index'
  get 'requests/new'
  get 'requests/edit'
  get 'requests/show'
  resources :hospitals
  resources :requests
  resources :doctors
  resources :appointments
  get 'homes/index'
  devise_for :users
  resources :users
  root to: 'patients#index'

  get 'notes/index'

  get 'notes/show'

  get 'notes/new'

  get 'notes/edit'
  
  resources :users
  get 'notes/new'

  get 'notes/edit'
  
  resources :patients do
  resources :notes
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
