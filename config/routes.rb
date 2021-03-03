# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'restaurants/name:string'
  # get 'restaurants/address:text'
  # get 'restaurants/category:string'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end

  # get "restaurants", to: "restaurants#index"

  # get "reviews/new", to: "reviews#new"
  # get "restaurants/new", to: "restaurantss#new"

  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # post "reviews", to: "reviews#create"
  # post "restaurants", to: "restaurants#create"

  # resources :restaurants

  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"

  # delete "restaurants/:id", to: "restaurants#destroy"
end
