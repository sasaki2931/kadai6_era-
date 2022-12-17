Rails.application.routes.draw do
  root 'facebooks#index'
  get 'sessions/new'
  resources :facebooks do
    collection do
      post :confirm
    end
  end



  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create,:show]
end
