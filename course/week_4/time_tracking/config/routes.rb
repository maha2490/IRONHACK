Rails.application.routes.draw do
# sends to specified controller & into the methods there
  
  get "/", to: "site#home"
  get "/contact", to: "site#contact"
  get "/projects", to: "projects#index"
  get "/projects/new", to: "projects#new"
  post "/projects", to: "projects#create"   # POST auto-generated from form on projects/new
  get "/projects/:id", to: "projects#show"
  get "/projects/:project_id/time_entries", to: "time_entries#index"
  get "projects/:project_id/time_entries/new", to: "time_entries#new"
  post "/projects/:project_id/time_entries", to: "time_entries#create", as: :project_time_entries

end
