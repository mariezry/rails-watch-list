Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :movies, only: [:index, :show, :new, :create] do
  #   resources :lists, only: [:create]
  # get "lists", to: 'lists#index'
  # get "lists/new", to: 'lists#new'
  # post "lists/:id", to: 'lists#create'
  # get "lists/:id", to: 'lists#show'
  root 'lists#index'

  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: [:destroy]
end

#   GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
