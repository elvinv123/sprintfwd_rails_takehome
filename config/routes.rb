Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#index'

  resources :members
  resources :teams do
    resources :members, only: [:index, :create, :destroy]
  end
  resources :projects do
    resources :members, only: [:index, :create, :destroy]
  end
end
