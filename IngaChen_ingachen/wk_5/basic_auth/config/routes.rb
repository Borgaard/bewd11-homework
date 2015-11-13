Rails.application.routes.draw do
  get "/index" => "users#index"
  resources :user
end
