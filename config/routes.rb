Rails.application.routes.draw do
  root 'dashboards#index'
  resources :users, :cars, :pets
end
