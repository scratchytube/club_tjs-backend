Rails.application.routes.draw do

  
  
  namespace :api do
    namespace :v1 do 
      post "/login", to: "users#login"
      get "/me", to: "users#me"
      resources :users
      resources :recipes
      resources :goods
      resources :fav_goods
      resources :fav_recipes
    end
  end
end
