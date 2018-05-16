Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  # resources :users do
  #   resources :cats
  # end

  resources :meowlounge

  resources :kittycreator

  resources :users do
    resources :condo
  end

  resources :cats

end
