Rails.application.routes.draw do
  root to: "home#index"
  get '/' => "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :closed_move, only: [:index]
  resources :opened_move, only: [:index, :create, :new]
  # resource :opened_move, only: [:destroy]
  delete '/opened_move', to: 'opened_move#destroy'
  resources :initial_coordinates, only: [:index]
  resources :additional_settings, only: [:index]
  resources :about_application, only: [:index]
end
