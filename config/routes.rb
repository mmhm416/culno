Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :tops, only: [:index]

  resources :crops do
    resources :purchases, only: [:index, :create]
  end

  resources :users, only: [:show] do
    resources :addresses, only: [:new, :create, :edit, :update, :index ]
  end
  
end
