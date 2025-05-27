Rails.application.routes.draw do
  # Auth routes outside the API namespace
  mount_devise_token_auth_for "User", at: "auth"

  namespace :api do
    namespace :v1 do
    end
  end

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
