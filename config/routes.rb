Rails.application.routes.draw do

  resources :skills
  resources :profiles
  resources :friendships
  resources :posts
  devise_for :users

  root 'pages#home'

  get 'pages/about'
  get 'pages/user_profile'
  get 'pages/user_skills'
  get 'pages/newsfeed'

  get '/newsfeed' => "pages#newsfeed", as: :user_root
  get '/user_profile' => "pages#user_profile"
  get '/user_skills' => "pages#user_skills"
  get '/about' => "pages#about"
  get '/index' => "pages#index"
  get '/:id' => 'users#show'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
