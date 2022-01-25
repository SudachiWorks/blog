# frozen_string_literal: true
class Post < ApplicationRecord
  has_rich_text :content

  validates :title, presence: true

  before_validation :set_default_title, unless: :title?, on: :create

  private

  def set_default_title
    self.title = "タイトル未設定"
  end
end
