Rails.application.routes.draw do
  resources :food_business_permits
  resources :representators
  resources :offices
  resources :business_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
