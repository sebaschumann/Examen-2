Rails.application.routes.draw do
  resources :guards
  resources :appointments
  resources :workers
  resources :worker_types
  resources :medical_centers
  resources :medical_center_types
  resources :ensayos
  devise_for :users

  root to: 'ensayos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
