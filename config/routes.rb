Rails.application.routes.draw do

  root 'homes#show', via: :get
  resource :dashboard, only: :show
  devise_for :users
  resources :shouts, only: [:create, :show]
  match 'users/show', to: 'users#show', via: 'get'


end
