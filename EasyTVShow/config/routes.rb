Rails.application.routes.draw do
  resources :shows
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post 'user/follow' => 'users#follow'
  delete 'user/unfollow' => 'users#unfollow'
  get 'service/graph' => 'services#graph'
  get 'user/individual' => 'users#individual'
  get 'acceptSolution' => 'solutions#accept'
end
