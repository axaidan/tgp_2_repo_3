Rails.application.routes.draw do
  
  get 'home/' , to: 'home#show'
  get 'home/team', to: 'team#presentation'
  get 'home/contact', to: 'contact#affichage'
  get 'home/welcome', to:'welcome#show_welcome'    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
