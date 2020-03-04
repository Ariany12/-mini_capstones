Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  
   namespace :api do
    get "/pen" => "capstones#pp"

    get "/pencil" => "capstones#pb"

    get "/eraser" => "capstones#eg"

   end
end
