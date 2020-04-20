Rails.application.routes.draw do
  get 'sign_up' => 'users#new', :as => "sign_up"
  root 'welcome#index'
  resources :users
  resources :tags
  resources :posts
  resources :periods
  resources :parties
  resources :mps
  resources :elections
  resources :about
  resources :welcome
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
