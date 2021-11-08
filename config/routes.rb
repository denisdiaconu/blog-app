Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/:user_id/posts', to: 'posts#index', as: "posts"
  post '/users/:user_id/posts', to: 'posts#create'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'posts/show'
  post '/users/:user_id/posts/:id/like', to: 'posts#like', as: 'posts/like'

  post '/users/:user_id/posts/comment', to: 'comments#create', as: "comments"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
