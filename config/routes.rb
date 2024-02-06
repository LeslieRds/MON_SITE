Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'static_pages/legal'
  get 'static_pages/terms_of_service'
  get 'static_pages/privacy'
  devise_for :users
  root to: "pages#home"

  resources :contacts, only: [:new, :create]

  resources :blogs
end
