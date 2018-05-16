Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :users do
    resources :condo do
      resources :cats
    end
  end
  resources :meowlounges
  resources :kittycreators

  # get 'condo', action: :show, controller: 'condos'
  # get ':user', to: 'condos#show', as: :condo
end
