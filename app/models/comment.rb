class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :text, presence: true
  validates_length_of :text, length: { minimum: 3, maximum: 200 }

  def update_comments_counter(id)
    post = Post.find_by(id: id)
    post.commentsCounter += 1
    post.update
  end
end
