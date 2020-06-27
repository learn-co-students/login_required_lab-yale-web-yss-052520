Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/new", to: "sessions#new", as: "new"
  post "/create", to: "sessions#create", as: "create"
  post "/destroy", to: "sessions#destroy", as: "destroy"
  get '/show', to: "secrets#show", as: "show"
end
