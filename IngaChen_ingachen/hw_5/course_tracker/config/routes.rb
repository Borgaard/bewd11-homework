Rails.application.routes.draw do
  get "/enrollments" => "students#enrollments"

  resources :students do
      member do 
        get "/enrollments" => "enrollments#index"
        post "/enrollments" => "enrollments#create"
        delete :enrollments
    end
  end

  resources :courses

end
