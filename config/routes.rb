Rails.application.routes.draw do
  root 'welcome#index'
  resources :links, param: :slug do
  end

end
