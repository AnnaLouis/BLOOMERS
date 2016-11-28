Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloomers, only: [:index, :show, :create, :new] do
    resources :programs, only: [:new, :create]
    # resources :reviews, only: [:new, :create]
    member do
      get "dashboard"
    end
  end

  resources :programs, only: [] do
    resources :candidatures, only: [:new, :create]
    # resources :batchs, only: [:new, :create]
  end

  # resources :batches, only: :show

  # resources :programs, only: [:edit, :update]

  resources :startups, only: [:show, :new, :create]
  mount Attachinary::Engine => "/attachinary"
end
