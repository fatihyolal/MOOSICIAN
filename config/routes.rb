Rails.application.routes.draw do
  get 'globalsearch/search'
  devise_for :users
  root to: "posts#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts, only: %i[index create] do
    resources :comments, only: :create
  end
  resources :users, only: [:show]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
