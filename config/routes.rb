# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    root 'pages#home'

    # The GeneralRoutes module extends methods which keep the different routes
    extend GeneralRoutes
    people_routes
    places_routes
    product_routes
    resource_routes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
