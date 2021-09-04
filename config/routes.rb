Rails.application.routes.draw do
  resources :posts
  #GET/about
  get "about", to: "about#index"
  #get "aliens", to: "aliens#index"
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
  #
  root to: "main#index"
 
end

  #
  #
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
