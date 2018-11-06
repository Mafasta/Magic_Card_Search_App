Rails.application.routes.draw do
  devise_for :general_users
  devise_for :users
  devise_for :admins

  resources :mtg_card
  resources :mtg_set
  resources :admin
  
  root 'mtg_card#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
