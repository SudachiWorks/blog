# frozen_string_literal: true
class Admin::LoginsController < AdminController
  skip_before_action :require_login

  def show
  end
end
