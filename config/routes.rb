Rails.application.routes.draw do
  devise_for :users
  root to: "crops#index"
  resources :tops, only: [:index]

  resources :crops do
    resources :purchases, only: [:index, :create]
    resources :messages, only: [:create, :destroy, :edit, :update]
    collection do
      get 'search'
    end
  end

  resources :users, only: [:show] do
    resources :addresses, only: [:new, :create, :edit, :update, :index ]
    resources :goods, only: [:index]
  end
  
end
