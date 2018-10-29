Rails.application.routes.draw do

  devise_for :users, path: '', path_names:{ sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  namespace :admin do
    resources :categories

  end

  resources :categories, only: [:index, :show]
  resources :subcategories
  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
