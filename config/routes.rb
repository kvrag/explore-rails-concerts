Rails.application.routes.draw do

  get '/' => "concerts#index"

  resources :concerts, only: [:index, :show]
end
