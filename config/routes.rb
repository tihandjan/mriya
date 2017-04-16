Rails.application.routes.draw do
  root 'main#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :users do
    get 'omniauth_callbacks/facebook'
    get 'omniauth_callbacks/google_oauth2'
    get 'omniauth_callbacks/vkontakte'
  end

  resources :articles, only: [:index, :show]
  resources :videos,   only: [:index, :show]
  resources :teams,    only: [:show]
end
