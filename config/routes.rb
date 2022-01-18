# frozen_string_literal: true
Rails.application.routes.draw do
  root "posts#index"

  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/auth/logout" => "auth0#logout"

  namespace "admin" do
    root "root#index"

    resource :login, only: :show
  end
end
