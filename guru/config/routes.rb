Rails.application.routes.draw do
  resources :pujas
  get 'lineages/index'
  root 'lineages#index'

  resources :pictures
  get 'lineages/index'
  root 'lineages#index'

end
