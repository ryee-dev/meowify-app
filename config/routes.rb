Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :users do
    resources :cats
  end

  resources :meowlounge

  resources :kittycreator

end
