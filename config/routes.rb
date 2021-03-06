Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :venues, except: [:index] do
    resources :ratings, only: [:new, :create]
  end

  resources :events do
    resources :bookings, except: [:index]
  end
  root to: 'pages#home'
end
