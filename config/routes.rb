Rails.application.routes.draw do
  root to: "pages#home"

  get 'legal', to: "pages#legal"
  get 'terms_of_service', to: "pages#terms_of_service"
  get 'privacy', to: "pages#privacy"

  get 'switch_language', to: 'application#switch_language', as: :switch_language
end
