Rails.application.routes.draw do

	# HOMEPAGE
	root 'home#show'	

	# ROUTE TEAM & CONTACT
	get '/team', to: 'team#presentation'
	get '/contact', to: 'contact#affichage'

	# ROUTE DYNAMIC PATH
	get '/welcome/:first_name', to: 'welcome#show_welcome'    

	# ROUTE SHOW ONE GOSSIP
	get 'gossip/:gossip_id', to: 'gossip#show', as: 'gossip_show'

	# ROUTE SHOW ONE USER
	get 'user/:user_id', to: 'user#show', as: 'user_show'
	
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
