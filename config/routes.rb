Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resources :items, only: [:create, :destroy]
  end
  get 'welcome/index'
  get 'welcome/about'
  root 'users#show'
end
