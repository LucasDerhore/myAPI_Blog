Rails.application.routes.draw do
  resource :users, only: [:create]
  
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  
  root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles

  # Defines the root path route ("/")
  # root "articles#index"
end
