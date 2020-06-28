Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'secrets#show' 
  get '/login', to: 'sessions#new'  
  post '/login', to: 'sessions#create' 
  post 'destroy', to: 'sessions#destroy'

  get '/secret', to: 'secrets#secret' 
end
