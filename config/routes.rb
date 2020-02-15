Rails.application.routes.draw do
  resources :entries
    resources :users, only: [:new, :create]
    root 'sessions#new'
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      get 'welcome', to: 'sessions#welcome'
end
