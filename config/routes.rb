Rails.application.routes.draw do
  root 'main#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :users do
    get 'omniauth_callbacks/facebook'
    get 'omniauth_callbacks/google_oauth2'
    get 'omniauth_callbacks/vkontakte'
  end

  resources :articles, only: [:index, :show] do
    get :more, on: :collection
  end
  resources :videos, only: [:index, :show] do
    get :more, on: :collection
  end
  resources :teams, only: [:show]
  resources :schedules, only: [:index]
  resources :albums, only: [:index, :show]
  resources :tournaments, only: [:show, :index] do
    collection do
      get :summer
      get :winter
      get :spring
    end
  end
  resources :achievements, only: [:index, :show]

  namespace :about, path: '/' do
    get :history
    get :sponsors
    get :mission
    get :emblem
    get :achievements
    get :coaching
    get :graduates
    get :tips
    get :memo
    get :anthem
  end

  namespace :main, path: '/' do
    get :search
  end


end
