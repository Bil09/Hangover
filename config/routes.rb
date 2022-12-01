Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "map", to: "maps#index"
  resources :partecipants, only: %i[new create]
  resources :invitations, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
