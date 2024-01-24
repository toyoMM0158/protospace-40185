Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  resources :prototypes do
  end

  root to: "prototypes#index"
  resources :users, only: :show
end
