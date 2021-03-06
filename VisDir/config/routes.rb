VisDir::Application.routes.draw do
  
  
  
  root to: 'listings#index'
  
  post "create_user" => 'users#create', :as => "create_user"
  get "signup" => 'users#new', :as => "signup"
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  get "logout" => 'logins#destroy', :as => "logout"
  
  resources :users, :listings
end
