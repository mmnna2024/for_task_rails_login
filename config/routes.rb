Rails.application.routes.draw do
  root 'users#index'
  resources :tasks
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
