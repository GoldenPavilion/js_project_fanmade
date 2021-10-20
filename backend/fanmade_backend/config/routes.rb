Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :products, only: [:index, :create, :show, :destroy]
    resources :categories, only: [:index, :create, :show]
    resources :fandoms, only: [:index, :show]
  end
end
