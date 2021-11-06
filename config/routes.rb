Rails.application.routes.draw do
  root "friends#index"
  resources :friends do
    resources :telephones, only: [:index]
  end
  resources :telephones
end
