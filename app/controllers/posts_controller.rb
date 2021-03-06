class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to post_path(@post)
    else 
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      @post.reload
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
  end
end