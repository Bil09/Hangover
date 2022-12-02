Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "map", to: "maps#index"
  get "party", to: "parties#new"

  resources :partecipants, only: %i[new create]
  resources :invitations, only: %i[new create]
  resources :chatrooms, only: %i[show index] do
    resources :messages, only: :create
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
