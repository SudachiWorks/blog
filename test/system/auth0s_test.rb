require "application_system_test_case"

class Auth0sTest < ApplicationSystemTestCase
  test "ログイン" do
    visit admin_login_url

    mock_auth_hash
    click_button "ログイン"

    assert_selector ".navbar-brand"
  end
end
