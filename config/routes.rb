# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  root to: 'main#index'
  resources :discussions do
    resources :posts, only: %i[create show edit update destroy], module: :discussions
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
