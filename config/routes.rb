# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :countries
  resources :states
  resources :cities
  resources :emails
  get '/new_company', to: 'people#new_company'
  get '/new_individual', to: 'people#new_individual'
  resources :people do
    resources :emails, module: :people
    resources :phones, module: :people
    resources :addresses, module: :people
  end
  resources :places do
    resources :emails, module: :people
    resources :phones, module: :people
    resources :addresses, module: :people
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
