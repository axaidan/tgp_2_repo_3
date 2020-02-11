Rails.application.routes.draw do
	# HOMEPAGE
	root 'gossips#index'	

	# ROUTE TEAM & CONTACT
	get '/team', to: 'team#presentation'
	get '/contact', to: 'contact#affichage'

	# ROUTE DYNAMIC PATH
	get '/welcome/:first_name', to: 'welcome#show_welcome'    

	resources :gossips
	resources :users
end
