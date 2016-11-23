Rails.application.routes.draw do

  resources :experiences
  resources :educations
  resources :educations
  resources :skills
  resources :profiles
  resources :friendships
  resources :posts
  devise_for :users

  root 'pages#home'

  get 'pages/about'
  get 'pages/user_profile'
  get 'pages/user_skills'
  get 'pages/user_education'
  get 'pages/user_experiences'
  get 'pages/newsfeed'

  get '/newsfeed' => "pages#newsfeed", as: :user_root
  get '/user_profile' => "pages#user_profile"
  get '/user_skills' => "pages#user_skills"
  get '/user_education' => "pages#user_education"
  get '/user_experiences' => "pages#user_experiences"
  get '/about' => "pages#about"
  get '/index' => "pages#index"
  get '/:id' => 'users#show'

  resources :conversations do
    resources :messages
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
