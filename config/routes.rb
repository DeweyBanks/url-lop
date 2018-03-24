Rails.application.routes.draw do
  root 'welcome#index'
  resources :links, params: :slug

end
