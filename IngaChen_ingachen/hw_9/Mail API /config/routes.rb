Rails.application.routes.draw do
  devise_for :users,
             defaults: { format: :json },
             controllers: { registrations: 'registrations', sessions: 'sessions' }

  get 'messages' => 'messages#index'
  get 'messages/sent' => 'messages#sent'
  get 'messages/:id' => 'messages#show'
  delete 'messages/:id' => 'messages#destroy'
end
