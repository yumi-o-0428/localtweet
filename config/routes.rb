Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  patch "users/:id/update" => "users#update"

  get "tweets/index" => "tweets#index"
  get "tweets/new" => "tweets#new"
  get "tweets/search" => "tweets#set_search"
  get "tweets/:id" => "tweets#show"
  post "tweets/create" => "tweets#create"
  get "tweets/:id/edit" => "tweets#edit"
  patch "tweets/:id/update" => "tweets#update"
  post "tweets/:id/destroy" => "tweets#destroy"
  get "tweets/tags/index" => "tweets#tags_index"

  post "favorites/:tweet_id/create" => "favorites#create"
  post "favorites/:tweet_id/destroy" => "favorites#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
