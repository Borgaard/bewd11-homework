Rails.application.routes.draw do
  get "/" => "book#index"
  get "/edit" => "book#edit"
  post "/books" => "book#create"
  get "/books/:id" => "book#show"
end