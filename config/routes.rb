Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  get 'pages/about'
  get 'pages/user_profile'
  

  get '/user_profile' => "pages#user_profile", as: :user_root
  get '/about' => "pages#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
