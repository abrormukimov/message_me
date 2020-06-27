Rails.application.routes.draw do
	root 'chatrooms#index'

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
	post 'message', to: 'messages#create'
	
	# resources :users
	# resources :messages
end
