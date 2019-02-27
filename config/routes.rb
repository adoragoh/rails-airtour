Rails.application.routes.draw do
  devise_for :users do
    resources :tours do
      resources :bookings
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tours do
    resources :bookings
  end

  resources :bookings, only: :destroy

end
