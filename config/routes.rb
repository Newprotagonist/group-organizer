Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :groups, only: %i[create show destroy] do
    resources :group_members, only: %i[create]
  end
  resources :group_members, only: %i[destroy]
end
