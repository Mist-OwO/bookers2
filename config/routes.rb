Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get '/homes/about'
  
  get '/books/index'
  resources :books
  
  resources :users, only: [:index, :show, :edit]
end
