Rails.application.routes.draw do
  resources :lists, only: [:index, :show]

  get "up" => "rails/health#show", as: :rails_health_check
end
