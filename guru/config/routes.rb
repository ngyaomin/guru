Rails.application.routes.draw do
  devise_for :user
  resources :pujas
  get 'lineages/index'
  root 'lineages#index'

  resources :pictures
  get 'lineages/index'
  root 'lineages#index'

end
