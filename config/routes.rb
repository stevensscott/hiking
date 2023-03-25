Rails.application.routes.draw do
#users
post "/users" => "users#create"
#sessions
post "/sessions" => "sessions#create"
#favorite hikes
#hike_ratings
#hike_comments
#hikes
get "/hikes" => "hikes#index" 
get "/hikes/:id" => "hikes#show"
post "/hikes" => "hikes#create" 
patch "/hikes/:id" =>"hikes#update"
delete "/hikes/:id" =>"hikes#destroy"

end
