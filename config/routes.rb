Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bartenders, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
  patch "/accept", to: "bookings#accept", as: :accept
  patch "/reject", to: "bookings#reject", as: :reject
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
