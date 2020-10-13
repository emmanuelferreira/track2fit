require 'sidekiq/web'
require 'subdomain'

Rails.application.routes.draw do


  constraints Subdomain do
    resources :workouts
  end


  devise_for :users
  root to: 'pages#home'
end
