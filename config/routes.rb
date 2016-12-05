Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get '/map' => 'pages#map'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloomers, only: [:index, :show, :create, :new] do
    resources :programs, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
      get "dashboard" => 'pages#dashboard'

  resources :programs, only: [] do
    resources :candidatures, only: [:new, :create]
    resources :batches, only: [:new, :create]
  end

  resources :batches, only: [:show, :index]

  resources :candidatures, only: [:show, :index] do
    member do
      post 'short_list', to: "candidatures#short_list"
      post 'accept', to: "candidatures#accept"
      post 'refuse', to: "candidatures#refuse"
    end
  end

  # resources :programs, only: [:edit, :update]
  resources :startups, only: [:show, :new, :create]
  mount Attachinary::Engine => "/attachinary"
end
