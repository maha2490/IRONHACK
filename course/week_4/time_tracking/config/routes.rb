Rails.application.routes.draw do
# sends to specified controller & into the methods there
  
  get "/", to: "site#home"
  get "/contact", to: "site#contact"
  get"/projects", to: "projects#index"
  get"/projects/new", to: "projects#new"
  post "/projects", to: "projects#create"
  get"/projects/:id", to: "projects#show"
end
