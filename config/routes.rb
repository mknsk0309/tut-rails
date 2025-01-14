Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  root to: "home#index"
end
