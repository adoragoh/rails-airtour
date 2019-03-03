Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tours do
    resources :bookings, only: [:index, :create, :update]
    resources :reviews, only: :create
  end

  resources :bookings, only: [ :index, :edit, :update, :destroy ]

  get '/profile', to: 'profiles#index'

end

# /tours => See all tours
# /tours/:id => See details of a particular tour
# /tours/new => Create a new tour
# /tours/bookings => See all bookings for your your (if you are the tour owner)
# /bookings => See all your bookings (be able to update no. of guests, or delete it), and tours you've created
