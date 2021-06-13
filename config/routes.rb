Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :tops
  resources :users, only: [:show] do
    resources :addresses
  end
end
