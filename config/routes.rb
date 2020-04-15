Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"

  get "users/signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  patch "users/:id/update" => "users#update"

  get "tweets/index" => "tweets#index"
  get "tweets/new" => "tweets#new"
  get "tweets/:id" => "tweets#show"
  post "tweets/create" => "tweets#create"
  get "tweets/:id/edit" => "tweets#edit"
  patch "tweets/:id/update" => "tweets#update"
  post "tweets/:id/destroy" => "tweets#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
