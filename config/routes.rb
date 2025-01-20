Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :users, only: %i[new edit create update]

  root to: "home#index"
end
