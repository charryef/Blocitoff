Rails.application.routes.draw do
  # get 'items/index'
  # get 'items/new'
  # get 'item/index'
  # get 'item/show'
  # get 'item/new'
  devise_for :users
  resources :users do
    resources :items, only: [:create]
  end
  get 'welcome/index'
  get 'welcome/about'
  root 'users#show'
end
