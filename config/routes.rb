Rails.application.routes.draw do
  get 'home/index'
  resources :orders
  resources :customers
  resources :reviews
  resources :books
  resources :suppliers
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
