Rails.application.routes.draw do

  root 'homes#show', via: :get
  resource :dashboard, only: [:show]
  devise_for :users
  resources :shouts, only: [:show]
  resources :text_shouts, only: :create
  resources :photo_shouts, only: :create
  resources :users, only: [:new, :create, :show] do
    post 'follow', to: 'following_relationships#create'
  end


end
