Rails.application.routes.draw do
  devise_for :general_users
  devise_for :users
  devise_for :admins

  resources :mtg_card
  resources :mtg_set
  resources :admin
  resources :user_profile
  resources :list_card

  delete '/list_card', to: 'list_card#destroy'
  
  root 'mtg_card#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
