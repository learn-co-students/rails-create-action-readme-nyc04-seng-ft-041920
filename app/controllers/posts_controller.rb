class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    # byebug
    post = Post.new(title: params[:title], description: params[:description])
    post.save

    redirect_to post_path(post)
  end
end
