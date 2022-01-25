# frozen_string_literal: true
class Site < ApplicationRecord
  validates :name, presence: true

  before_validation :set_default_name, unless: :name?, on: :create

  private

  def set_default_name
    self.name = "サイト名未設定"
  end
end
