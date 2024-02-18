Rails.application.routes.draw do
  get 'static_pages/legal'
  get 'static_pages/terms_of_service'
  get 'static_pages/privacy'
  root to: "pages#home"

  get 'switch_language', to: 'application#switch_language', as: :switch_language

end
