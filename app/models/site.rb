# frozen_string_literal: true
class Site < ApplicationRecord
  validates :name, presence: true

  before_validation -> { self.name = "サイト名未設定" }, unless: :name?, on: :create
end
