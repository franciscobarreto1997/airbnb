Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :flats, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
