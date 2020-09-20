Rails.application.routes.draw do

	root 'application#home'

	get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'

  resources :cafes
  resources :notes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
