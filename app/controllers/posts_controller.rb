class PostsController < ApplicationController
  
  # get '/posts' do 
  #   erb :index
  # end

  def index
    @posts = Post.all
  end

  # get '/posts/:id' do
  #   erb :show
  # end
  def show
    @post = Post.find(params[:id])
  end

  # get '/posts/new' do

  #   erb :new
  # end

  def new
    @post = Post.new
  end

  # post '/posts' do

    # redirect_to "/posts/#{@post.id}"
  # end

  # add create method here
  def create 
    # byebug
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    # byebug
    redirect_to post_path(@post)
    # "/posts/#{@post.id}" 
  end
end
