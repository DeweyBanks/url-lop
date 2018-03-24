Rails.application.routes.draw do
  resources :links
  root 'welcome#index'
end
