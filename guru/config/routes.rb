Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :user
  resources :pujas
  get 'lineages/index'
  root 'lineages#index'

  resources :pictures
  get 'lineages/index'
  root 'lineages#index'

end
