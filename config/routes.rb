Rails.application.routes.draw do
  resources :flights, only: [:index]
  resources :orders, only: [:new, :create, :show]
  root "flights#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
