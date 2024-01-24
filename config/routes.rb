Rails.application.routes.draw do
  get 'static_pages/legal'
  get 'static_pages/terms_of_service'
  get 'static_pages/privacy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :blogs
end
