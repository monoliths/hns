Rails.application.routes.draw do
  resources :locations, only: [:update, :show, :destroy]
  resources :users, only: [:create]
  resources :sessions, only: [:create, :show, :destroy]
  post 'authenticate', to: 'authentication#authenticate'
  get 'user_info', to: 'users#user_info'
end
