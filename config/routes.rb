Rails.application.routes.draw do
  root "dogs#index"

  resources :dogs, only: %i[index new create show edit update]
end
