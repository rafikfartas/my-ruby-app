Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/devise/sessions',
    registrations: 'admin/devise/registrations',
    passwords: 'admin/devise/passwords',
  }

  namespace :admin do
    resources :products
    root to: 'products#index'
  end

  devise_for :users, controllers: {
    sessions: 'user/devise/sessions',
    registrations: 'user/devise/registrations',
    passwords: 'user/devise/passwords',
  }

  resources :tasks



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "user/tasks#index"
end
