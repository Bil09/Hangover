Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "map", to: "maps#index"
  get "party", to: "parties#new"

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
