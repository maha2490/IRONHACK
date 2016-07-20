Rails.application.routes.draw do

#important that this goes above scope/api-s
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"

 scope "/api" do
    resources :sandwiches
    resources :ingredients
    post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
	end
  

  #post "/sandwiches/:id/ingredients/add", to: "sandwiches#add_ingredient"

end
