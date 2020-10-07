require 'sidekiq/web'

Rails.application.routes.draw do


  class Subdomain
    def self.matches?(request)
      subdomains = %w{ www admin }
      request.subdomain.present? && !subdomains.include?(request.subdomain)
    end
  end

  constraints Subdomain do
    resources :workouts
  end


  devise_for :users
  root to: 'pages#home'
end
