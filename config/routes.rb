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
   end 
  end
