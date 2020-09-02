Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:create, :show, :index, :edit, :update, :destroy]
  root 'home#top'
  get 'home/about'
end