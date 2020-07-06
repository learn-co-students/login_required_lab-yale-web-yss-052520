Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
  
  post '/', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  
  get 'sessions/welcome', to: 'sessions#welcome'
  get '/secret' => 'secrets#show'
  
  post '/logout', to: 'sessions#destroy'
end
