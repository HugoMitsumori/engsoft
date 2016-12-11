Rails.application.routes.draw do
  resources :shows
  resources :users
  resources :users do
    get :followers
    get :following
  end
  resources :relationships
  resources :watchings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
