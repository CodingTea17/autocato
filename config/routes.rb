Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'welcome/index'

  resources :bookmarks

  # Set user_root_path to the bookmarks index because that is where we want them
  # to go after sign in
  get '/bookmarks' => 'bookmarks#index', as: :user_root

  devise_for :users
end
