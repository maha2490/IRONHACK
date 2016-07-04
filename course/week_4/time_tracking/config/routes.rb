Rails.application.routes.draw do
# sends to site controller & into the methods there
  get "/", to: "site#home"
  get "/contact", to: "site#contact"
end
