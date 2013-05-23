class PostsController < ApplicationController

  load_and_authorize_resource

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    redirect_to :posts, flash: {success: "Your post has been created."}
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to :posts, flash: {success: "Your post has been updated."}
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :posts, flash: {success: "Your post has been destroyed."}
  end
end