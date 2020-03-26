Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  
    get "/products" => "products#index" 
    get "/products/new" => "products#new" 
    get "/products/:id" => "products#show" 
    get "/products/" => "products#create" 
    get "/products/:id/edit" => "products#edit"
    patch "/products/:id" => "products#update" 


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

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create" 

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
   end
end