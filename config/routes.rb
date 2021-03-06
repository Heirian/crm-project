# frozen_string_literal: true

Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    root 'pages#home'

    # The GeneralRoutes module extends methods which store the different routes
    # for better organization and code maintenance
    extend GeneralRoutes
    people_routes
    places_routes
    product_routes
    resource_routes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
