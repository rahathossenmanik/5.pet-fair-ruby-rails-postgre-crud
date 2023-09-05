Rails.application.routes.draw do
 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # Character Routes
  get "/characters/getall", to: "character#index"
  get "/characters/getbyid/:id", to: "character#show"
  post "/characters/create", to: "character#create"
  put "/characters/update/:id", to: "character#update"
  delete "/characters/delete/:id", to: "character#destroy"

  # Pet Type Routes
  get "/pettypes/getall", to: "pet_type#index"
  get "/pettypes/getbyid/:id", to: "pet_type#show"
  post "/pettypes/create", to: "pet_type#create"
  put "/pettypes/update/:id", to: "pet_type#update"
  delete "/pettypes/delete/:id", to: "pet_type#destroy"

  # Pet Routes
  get "/pets/getall", to: "pet#index"
  get "/pets/getbyid/:id", to: "pet#show"
  post "/pets/create", to: "pet#create"
  put "/pets/update/:id", to: "pet#update"
  delete "/pets/delete/:id", to: "pet#destroy"
end
