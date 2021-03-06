Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create, :destroy]
  resources :customers, only: [:index]
  resources :debtors, only: [:index]
  resources :users, only: [:new, :create, :index]
  root to: 'sessions#new'
end
