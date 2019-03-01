Rails.application.routes.draw do

  # devise_for :users
  # root 'groups#index'
  # resources :users, only: [:index, :edit, :update]
  # resources :groups, only: [:index,:new, :create, :edit, :update] do
  #   resources :messages, only: [:index, :create]
  # end

    devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update, :index]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    resources :users, only: [:index]
  end
end

