# frozen_string_literal: true

module GeneralRoutes
  def people_routes
    get '/new_company', to: 'people#new_company'
    get '/new_individual', to: 'people#new_individual'
    get '/company_index', to: 'people#company_index'
    get '/individual_index', to: 'people#individual_index'

    resources :people do
      scope module: :people do
        resources :emails, :phones, :addresses
      end
      resources :bank_accounts
    end
  end

  def places_routes
    resources :places do
      scope module: :places do
        resources :emails, :phones, :addresses
      end
    end
  end

  def product_routes
    get '/new_service', to: 'products#new_service'
    get '/new_good', to: 'products#new_good'
    get '/service_index', to: 'products#service_index'
    get '/good_index', to: 'products#good_index'
    resources :products
  end

  def resource_routes
    resources :grades
    resources :products
    resources :courses
    devise_for :users
    resources :countries
    resources :states
    resources :cities
    resources :emails
  end
end
