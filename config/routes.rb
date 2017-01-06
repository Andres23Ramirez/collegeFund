Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :donors
  resources :students
  resources :parents

  devise_for :users, controllers: {registrations: 'registrations'}

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
