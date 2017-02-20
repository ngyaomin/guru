Rails.application.routes.draw do
  resources :pujas
  get 'lineages/index'
  root 'lineages#index'


end
