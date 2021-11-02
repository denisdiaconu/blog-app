class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_likes_counter(id)
    post = Post.find_by(id: id)
    post.likesCounter += 1
    post.update
  end
end
