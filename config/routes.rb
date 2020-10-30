Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/posts/search', 'posts#search'

  resources :posts  do
  	resources :comments
  	resources :likes
  end

  resources :suppliers do
    resources :account
  end

  resources :account_histories
  resources :physicians
  resources :patients
  resources :appointments
  resources :details
   
  resources :animals

  resources :employees
  resources :products
  resources :pictures


end
