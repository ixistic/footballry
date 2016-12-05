Rails.application.routes.draw do

  get 'marketplace/index'

  get 'schedules/index'

  get 'video/index'

  get 'news/index'

  resources :comments
  resources :topics do
    resources :posts
  end
  resources :post_types
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'home/index'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
