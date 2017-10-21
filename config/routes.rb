# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root 'pages#home'
    devise_for :users
    resources :countries
    resources :states
    resources :cities
    resources :emails
    get '/new_company', to: 'people#new_company'
    get '/new_individual', to: 'people#new_individual'
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
