Rails.application.routes.draw do
  root 'blog#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    password: 'users/password'
  }
  resources :blogs
  resources :profiles
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
