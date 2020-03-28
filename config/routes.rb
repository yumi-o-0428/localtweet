Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"

  get "tweets/index" => "tweets#index"
  get "tweets/new" => "tweets#new"
  get "tweets/:id" => "tweets#show"
  post "tweets/create" => "tweets#create"
  get "tweets/:id/edit" => "tweets#edit"
  patch "tweets/:id/update" => "tweets#update"
  post "tweets/:id/destroy" => "tweets#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
