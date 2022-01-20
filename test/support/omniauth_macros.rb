# frozen_string_literal: true
module OmniauthMacros
  def mock_auth_hash
    # The mock_auth configuration allows you to set per-provider (or default)
    # authentication hashes to return during integration testing.
    OmniAuth.config.mock_auth[:auth0] = {
      "provider" => "auth0",
      "uid" => "123545",
      "info" => {
        "name" => "mockuser",
        "nickname" => "mocky",
        "image" => "mock_user_thumbnail_url"
      },
      "credentials" => {
        "token" => "mock_token",
        "secret" => "mock_secret"
      }
    }
  end
end
