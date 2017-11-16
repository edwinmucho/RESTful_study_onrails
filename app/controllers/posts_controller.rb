class PostsController < ApplicationController
  
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      img_url: params[:image_url],
      story: params[:story]
      )
      
      redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @post.update(
      img_url: params[:image_url],
      story: params[:story]
      )
      
      redirect_to post_path(@post.id)
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  def find_post
    @post = Post.find(params[:id])
  end
end
