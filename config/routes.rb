# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'main#index'
  resources :discussions, only: %i[index create new]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
