Rails.application.routes.draw do
  resources :messages
  root 'chatroom#index'

  get 'login', to: 'sessions#new'
  get 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
