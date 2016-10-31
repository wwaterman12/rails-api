class Api::V1::PostsController < ApplicationController
  before_action :set_author

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
  end

  private

  def post_params
    post.permit(:content, :author_id)
  end

  def set_post
    @post ||= Post.find(params[:id])
  end
end
