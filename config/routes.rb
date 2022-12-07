Rails.application.routes.draw do
  root to: "pages#home"
  get "map", to: "maps#index"
  get "party", to: "parties#new"
  get "homeparty", to: "parties#new_homeparty"
  get "feed", to: "feed#index"

  devise_for :users, controllers: { registrations: 'users/registrations' }
  post "feed", to: "posts#create", as: "new_post"
  get "feeds", to: "posts#index", as: "posts"
  resources :parties, only: [:new, :create] do
    resources :participants, only: %i[new create]
  end
  resources :invitations, only: [:new, :create]
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
