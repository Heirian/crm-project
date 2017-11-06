# frozen_string_literal: true

Rails.application.routes.draw do
  resources :courses
  resources :products
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    root 'pages#home'
    devise_for :users
    resources :countries
    resources :states
    resources :cities
    resources :emails
    get '/new_company', to: 'people#new_company'
    get '/new_individual', to: 'people#new_individual'
    get '/company_index', to: 'people#company_index'
    get '/individual_index', to: 'people#individual_index'
    get '/new_service', to: 'products#new_service'
    get '/new_good', to: 'products#new_good'
    get '/service_index', to: 'products#service_index'
    get '/good_index', to: 'products#good_index'
    resources :products
    resources :people do
      scope module: :people do
        resources :emails, :phones, :addresses
      end
      resources :bank_accounts
    end
    resources :places do
      scope module: :places do
        resources :emails, :phones, :addresses
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
