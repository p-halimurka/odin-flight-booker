Rails.application.routes.draw do
  resources :flights, only: [:index]
  resources :orders, only: [:new, :create, :show]
  root "flights#index"
  default_url_options host: "http://localhost:3000"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
