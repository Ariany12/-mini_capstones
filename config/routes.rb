Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  
    namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create" # i dont need a create json is the same the show
    patch "/products/:id" => "products#update" 
    delete "/products/:id" => "products#destroy"
    patch "/suppliers/:id" => "products#update" 
   
  #   get "/suppliers" => "suppliers#index"
  #   get "/suppliers/:id" => "suppliers#show"
  #   post "/suppliers" => "suppliers#create" # i dont need a create json is the same the show
  #   patch "/suppliers/:id" => "suppliers#update"
  #   delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

   end
end