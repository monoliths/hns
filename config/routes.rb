Rails.application.routes.draw do
  resources :locations, only: [:update, :show, :index]
  resources :users, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  
end
