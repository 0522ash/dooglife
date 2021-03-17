Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
    resources :users, only: [:new, :create]
    resources :fosters, only: [:index, :new, :create, :show, :edit]
end
