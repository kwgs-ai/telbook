Rails.application.routes.draw do
  root "friends#index"
  resources :friends do

  end
  resources :telephones
end
