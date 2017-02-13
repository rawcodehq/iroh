Rails.application.routes.draw do
  get "/" => "page#welcome"

  get "/quotes/new" => "quotes#new"

  post "/quotes" => "quotes#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
