Rails.application.routes.draw do
  root "lists#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
