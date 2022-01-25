# frozen_string_literal: true
class Admin::PostsController < AdminController
  def index
    @posts = Post.all.order(:created_at).reverse_order
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.errors.blank?
      redirect_to edit_admin_post_url(@post), notice: "記事を作成しました"
    end
  end

  def edit
  end

  private

  def post_params
    params.require("post").permit(:title, :content, :posted_at)
  end
end
