Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'welcome/index'

  devise_for :users #, skip: :registrations
  # devise_scope :user do
  #   resource :registration,
  #     only: [:edit, :update, :destroy, :create],
  #     path: 'users',
  #     controller: 'devise/registrations',
  #     as: :user_registration do
  #       get :cancel
  #     end
  # end
end
