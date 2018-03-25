Rails.application.routes.draw do
  root 'welcome#index'
  resources :links
  get ':slug' => 'links#show'

end
