class CommentsController < ApplicationController
  def create
    @comment = Comment.new(user_id: params[:user_id], post_id: params[:post_id], text: params[:text])

    if @comment.save
      redirect_to posts_path, notice: 'Created comment successfully'
    else
      redirect_to posts_path, notice: 'something went wrong Please try again later!'
    end
  end
end
