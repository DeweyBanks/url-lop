Rails.application.routes.draw do
  root 'welcome#index'
  resources :links
  get '/top-100' => 'links#top', as: "top"
  get ':slug' => 'links#show'

end
