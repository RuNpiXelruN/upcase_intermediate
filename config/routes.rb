Rails.application.routes.draw do

  root 'homes#show', via: :get
  resource :dashboard, only: [:show]
  devise_for :users
  resources :shouts, only: [:show]
  resources :text_shouts, only: :create
  match 'users/show', to: 'users#show', via: 'get'


end
