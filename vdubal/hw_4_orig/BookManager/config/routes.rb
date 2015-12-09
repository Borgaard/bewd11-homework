Rails.application.routes.draw do

    resources :books do
            resources :stores
    
    end
    
end
