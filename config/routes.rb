Rails.application.routes.draw do
  resources :facebooks
  resources :users, only: [:new, :create]
end
