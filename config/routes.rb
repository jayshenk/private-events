Rails.application.routes.draw do
  root               'events#index'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users, only: [:show, :new, :create]
  resources :events, only: [:index, :show, :new, :create]
end