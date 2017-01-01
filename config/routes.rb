Rails.application.routes.draw do
  devise_for :users
  root to: "dashboard#index"
  resources :posts, except: [:destroy]
  resources :categories, only: [:show]
end
