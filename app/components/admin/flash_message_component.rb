# frozen_string_literal: true

class Admin::FlashMessageComponent < ViewComponent::Base
  def before_render
    @alerts = []
    if helpers.flash[:alert]
      @alerts << { class: "alert-danger", message: flash[:alert] }
    end
    if helpers.flash[:notice]
      @alerts << { class: "alert-success", message: flash[:notice] }
    end
  end
end
