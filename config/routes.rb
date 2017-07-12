Rails.application.routes.draw do
  resources :bookmarks
  root to: 'welcome#index'
  get 'welcome/index'

  devise_for :users
end
