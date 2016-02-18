Rails.application.routes.draw do
  resources :pages
  resources :users
  resources :user_sessions, only: [:new, :create, :destroy]
  get 'login' => 'user_sessions#new'
  get 'logout'=> 'user_sessions#destroy'
  root to: 'pages#index'
end
