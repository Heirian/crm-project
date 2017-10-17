# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :countries
  resources :states
  resources :cities
  get '/new_company', to: 'people#new_company'
  get '/new_individual', to: 'people#new_individual'
  resources :people, except: :new

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
