class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def index
	  @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @user = User.find(params[:user_id])
	  @post = Post.find(params[:id])
  end

end
