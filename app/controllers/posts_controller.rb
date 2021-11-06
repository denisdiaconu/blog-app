class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes([:comments])
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

  def like
    Like.create(user_id: params[:data][:user_id])
    Like.update_likes_counter(params[:data][:post_id])
    redirect_to posts_show_path(params[:data][:post_id])
  end

  def create
    @post = Post.new(user_id: params[:user_id], title: params[:title], text: params[:text])
    if @post.save
      redirect_to posts_path, notice: 'Create post successfully'
    else
      redirect_to posts_path, notice: 'Something went wrong Please try again!'
    end
  end
end
