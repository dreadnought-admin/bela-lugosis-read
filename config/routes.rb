Rails.application.routes.draw do

  resources :favorites
  resources :books
  resources :poems

  resources :users, only: [:index, :show, :create] do
    resources :favorites
  end 

  post "/login", to: "sessions#create"
  get "/authorized_user", to: "users#show"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "users#create"
  get "/me", to: "users#show"



  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end