Rails.application.routes.draw do

	root 'home#show'	
	get '/team', to: 'team#presentation'
	get '/contact', to: 'contact#affichage'
	get '/welcome/:first_name', to: 'welcome#show_welcome'    
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
