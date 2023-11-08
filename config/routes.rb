Rails.application.routes.draw do
  # get 'carts/show'
  # get 'cart_items/new'
  # get 'cart_items/create'
  # get 'cart_items/destroy'
  # get 'tops/main'
  # get 'products/index'
  # get 'products/new'
  # get 'products/create'
  # get 'products/destroy'
  root 'products#index'
  resources :products
  #root 'top#main'
  get 'top/main'
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
