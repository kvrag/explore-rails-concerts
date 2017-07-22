Rails.application.routes.draw do

  get '/' => "concerts#index"

  resources :concerts, only: [:index, :show]
  resources :users, only: [:new, :create]
end
