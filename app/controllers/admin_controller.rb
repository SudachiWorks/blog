# frozen_string_literal: true
class AdminController < ApplicationController
  before_action :require_login

  rescue_from Admin::Errors::Forbidden, with: :render_not_found_error

  private

  def require_login
    unless logged_in?
      redirect_to admin_login_url
    end
  end

  def logged_in?
    session[:userinfo].present?
  end
  helper_method :logged_in?

  def render_not_found_error(error = nil)
    if error
      logger.info "Rendering 404 with #{error.class}: #{error.message}"
    end
    render file: Rails.root.join("public/404.html"), status: :not_found, content_type: "text/html", layout: false
  end
end
