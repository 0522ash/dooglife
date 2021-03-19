Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
    resources :users, only: [:index, :new, :create, :show]
    resources :fosters, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :dogrun, only: [:index, :new, :create]
end
