Rails.application.routes.draw do

  get 'home/index'
  devise_for :admins, controllers: {
    sessions: 'admin/devise/sessions',
    registrations: 'admin/devise/registrations',
    passwords: 'admin/devise/passwords',
  }

  namespace :admin do
    resources :products
    resources :categories
    root to: 'products#index'
  end

  devise_for :users, controllers: {
    sessions: 'user/devise/sessions',
    registrations: 'user/devise/registrations',
    passwords: 'user/devise/passwords'
  }

  namespace :user do
    resources :tasks
    root to: 'tasks#index'
  end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  # get '/:locale' => 'user/tasks#index'

end
