Rails.application.routes.draw do
  namespace :masters do
    resources :articles
  end

  namespace :residences do
    resources :articles, only: [:index, :show]
  end

  namespace :apartments do
    resources :articles, only: [:index, :show]
  end

  devise_for :masters, controllers: {
    sessions:        'masters/sessions',
    passwords:       'masters/passwords',
    registrations:   'masters/registations'
  }
  devise_for :apartments, controllers: {
    sessions:        'apartments/sessions',
    passwords:       'apartments/passwords',
    registrations:   'apartments/registations'
  }
  devise_for :residences, controllers: {
    sessions:        'residences/sessions',
    passwords:       'residences/passwords',
    registrations:   'residences/registations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
