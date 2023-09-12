Rails.application.routes.draw do
  get 'globalsearch/search'
  devise_for :users
  root to: "posts#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts, only: %i[index create] do
    resources :comments, only: :create
    resources :likes, only: :create
  end

  resources :users, only: [:show]


  resources :likes, only: :destroy
  resources :profiles, only: %i[show]
  resources :chatrooms, only: %i[show index create] do
    resources :messages, only: :create
    get 'messages', on: :member, to: 'chatrooms#show_messages'
  end
end
