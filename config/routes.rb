Rails.application.routes.draw do
  resources :entries
  resources :questions
  resources :contests
  devise_for :users
  root "application#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
