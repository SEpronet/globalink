Rails.application.routes.draw do

  resources :searches
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
  get 'pages/connects'

  get 'conversations', to: 'conversations#index', as: :conversations

  get '/newsfeed' => "pages#newsfeed", as: :user_root
  get '/user_profile' => "pages#user_profile"
  get '/user_skills' => "pages#user_skills"
  get '/user_education' => "pages#user_education"
  get '/user_experiences' => "pages#user_experiences"
  get '/about' => "pages#about"
  get '/index' => "pages#index"
  get '/show/:id' => 'users#show'
  get '/home' => 'pages#home'
  get '/connects' => "pages#connects"

  as :user do
    get 'log_in', to: 'devise/sessions#new', as: :sign_in
    get 'edit_account', to: 'devise/registrations#edit', as: :edit_account
    get 'sign_up', to: 'devise/registrations#new', as: :sign_up
  end
  
  get 'user(/:id)', to: 'users#show', as: :show_user
  get 'newsfeed', to: 'pages#newsfeed', as: :newsfeed
  get 'connects', to: 'pages#connects', as: :connections
  get 'about', to: 'pages#about', as: :aboutus
  get 'user_profile', to: 'pages#user_profile', as: :currentprofile
  get 'user_skills', to: 'pages#user_skills', as: :currentskills
  get 'user_education', to: 'pages#user_education', as: :currenteducation
  get 'user_experiences', to: 'pages#user_experiences', as: :currentexperiences
  get 'search_results', to: 'pages#profile_post_search_results', as: :search_results
  get 'search', to: 'pages#search_results', as: :search_page

  mount Commontator::Engine => '/commontator'
  
  resources :conversations do
    resources :messages
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
