Rails.application.routes.draw do
  resources :users, only: [:destroy]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :venues, except: [:index] do
    resources :ratings, only: [:new, :create]
  end

  resources :events do
    resources :bookings, except: [:index] do
      patch :approve
    end
    member do
      patch :cancel
    end
  end

  root to: 'pages#home'
end
