Rails.application.routes.draw do
  root to: "pages#home"
  get "welcome", to: "pages#welcome"
  get "useroptions", to: "pages#useroptions"
  get "map", to: "maps#index"
  get "party", to: "parties#new"
  get "homeparty", to: "parties#new_homeparty"

  devise_for :users, controllers: {
    registrations: 'users/registrations'

  }

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
