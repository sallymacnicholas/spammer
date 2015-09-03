Rails.application.routes.draw do
  root 'friends#index'

  resources :friends, only: [:index, :new, :create]
end
