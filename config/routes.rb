Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :flats, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :bookings, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  post 'flats', to: 'flats#create'


  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
