Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :meowlounges
  resources :kittycreators

  resources :users do
    resources :condos do
      resources :cats
    end
  end

  # get 'condo', action: :show, controller: 'condos'
  # get ':user', to: 'condos#show', as: :condo
end
