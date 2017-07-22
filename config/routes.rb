Rails.application.routes.draw do

  get '/', to: "concerts#index"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  resources :concerts, only: [:index, :show]
  resources :users, only: [:new, :create]
  resources :attendances, only: [:create]
end
