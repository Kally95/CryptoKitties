Rails.application.routes.draw do
  # get 'bookings/show'
  # get 'bookings/create'
  # get 'bookings/destroy'
  # get 'kitties/index'
  # get 'kitties/show'
  # get 'kitties/create'
  # get 'kitties/update'
  # get 'kitties/edit'
  # get 'kitties/destroy'
  # get 'kitties/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kitties do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show destroy]
end
