Rails.application.routes.draw do
  
  resource :users, only: [:create]
  resources :articles do
    resources :comments
  end

  
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  
  
  
  root "articles#index"

end
