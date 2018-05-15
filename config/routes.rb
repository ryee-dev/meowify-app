Rails.application.routes.draw do
  devise_for :users
  root 'cats#index'
end
