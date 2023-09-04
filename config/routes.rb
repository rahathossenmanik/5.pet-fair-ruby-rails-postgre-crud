Rails.application.routes.draw do
 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/characters/getall", to: "character#index"
  get "/characters/getbyid/:id", to: "character#show"
  post "/characters/create", to: "character#create"
  put "/characters/update/:id", to: "character#update"
  delete "/characters/delete/:id", to: "character#destroy"
end
