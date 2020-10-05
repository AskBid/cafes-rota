Rails.application.routes.draw do

	root 'application#home'

	get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'

	get '/auth/:provider/callback' => 'sessions#omniauth'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	get '/:location/cafes', to: 'cafes#location'

  resources :cafes, param: :slug
  resources :notes
  resources :visits, only: [:index, :update, :edit]
  resources :users, param: :slug do
		resources :cafes, only: [:index]
		resources :visits, only: [:index, :new, :create]  	
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end