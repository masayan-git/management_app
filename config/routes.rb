Rails.application.routes.draw do
  devise_for :apartments
  devise_for :residences
  devise_for :masters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
