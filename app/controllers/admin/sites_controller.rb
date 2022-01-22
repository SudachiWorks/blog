# frozen_string_literal: true
class Admin::SitesController < AdminController
  def edit
    @site = site
  end

  def update
    @site = site
    @site.update(site_params)

    if @site.errors.blank?
      redirect_to edit_admin_site_url, notice: "サイト設定を更新しました"
    end
  end

  private

  def site_params
    params.require("site").permit(:name, :description)
  end
end
