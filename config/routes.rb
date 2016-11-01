Rails.application.routes.draw do
  resources :posts
  devise_for :users

  root 'pages#home'

  get 'pages/about'
  get 'pages/user_profile'
  get 'pages/newsfeed'
  get 'pages/profile'

  get '/newsfeed' => "pages#newsfeed", as: :user_root
  get '/user_profile' => "pages#user_profile"
  get '/about' => "pages#about"
  get '/index' => "pages#index"
  get '/profile'=> "profile#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
