Rails.application.routes.draw do

	root 'application#home'

	get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'

	get '/auth/:provider/callback' => 'sessions#omniauth'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	get '/:location/cafes', to: 'cafes#location', as: 'location_cafes'

	resources :notes, only: [:create]

  resources :cafes, param: :slug do
  	resources :notes, only: [:index, :new]
	end

  resources :visits, only: [:update, :edit, :destroy]
  
  resources :users, param: :slug do
		resources :visits, only: [:index, :new, :create]
  end
end