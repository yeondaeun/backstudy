Rails.application.routes.draw do
  resources :homes
  devise_for :users

  root 'homes#index'
  get '/following' => "homes#following", as: 'home_following'
  get "/exceptme" => "homes#exceptme", as: 'home_exceptme'
  get "/follower" => "homes#follower", as: 'home_follower'
  get "/follow/:followed_id" =>"homes#follow", as: 'home_follow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
