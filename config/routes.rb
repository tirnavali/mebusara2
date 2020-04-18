Rails.application.routes.draw do
  root 'mps#index'
  resources :tags
  resources :posts
  resources :periods
  resources :parties
  resources :mps
  resources :elections
  resources :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
