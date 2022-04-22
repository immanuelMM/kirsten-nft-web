Rails.application.routes.draw do
  devise_for :admins
  devise_for :users 
  resources :users, only: [ :edit, :update]
  # resources :users
  # resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  get 'home/admin', to: 'home#admin'  , as: 'admin_home'
  get 'home/user', to: 'home#user'  , as: 'user_home'
  get 'home/index', to: 'home#index'  , as: 'index_home'
  get 'home/design', to: 'home#design'  , as: 'user_design'
  get 'home/profile', to: 'home#profile'  , as: 'user_profile'
  get 'home/users', to: 'home#users'  , as: 'users_all'
end
