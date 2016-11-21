Rails.application.routes.draw do

	resources :locations, only: [:update, :show, :destroy]
	resources :users, only: [:create]
	resources :sessions, only: [:create, :show, :destroy]


	post 'authenticate', to: 'authentication#authenticate'
	get 'userinfo', to: 'users#user_info'
  	get 'search/users', to: 'users#user_search'
  	get 'search/sessions', to: 'sessions#session_search'
end
