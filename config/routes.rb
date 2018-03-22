Rails.application.routes.draw do

  resources :responses
  resources :tests
  resources :plans
  root to: "pages#home"

  resources   :pages
  devise_for  :users

end
