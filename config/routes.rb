Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/homes/about'
  resources :books, only: [:index, :show, :edit]
  
  resources :books, only: [:index, :show, :edit]
end
