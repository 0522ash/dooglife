Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
    resources :users, only: [:new, :create]
end
