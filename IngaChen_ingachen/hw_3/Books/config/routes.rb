Rails.application.routes.draw do
  # get "/" => "book#index"
  # get "/books/edit/:id" => "book#edit", :as => :edit
  # patch "books/update/:id" => "book#update", :as => :update
  # post "/books" => "book#create"
  # get "/books/:id" => "book#show"
  # delete "/books/:id" => "book#destroy", :as => :book_delete

  root "books#index"

  resources :books do
  	resources :stores
  end
end