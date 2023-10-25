Rails.application.routes.draw do
  root to: 'home#index'

  resources :movies, only: [:show, :create, :new, :edit, :update]
  resources :genres, only: [:index, :show, :create, :new, :edit, :update]
  resources :directors, only: [:index, :show, :create, :new, :edit, :update]
end
