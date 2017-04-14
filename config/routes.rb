Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'main#index'

  resources :articles, only: [:index, :show]
  resources :videos,   only: [:index, :show]
  resources :teams,    only: [:show]
end
