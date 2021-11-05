class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  validates :title, :text, presence: true
  validates :commentsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likesCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :title, length: { maximum: 250,
    too_long: "%{count} characters is the maximum allowed" }
  
  def update_post_counter(id)
    user = User.find_by(id: id)
    user.postsCounter += 1
    user.update
  end

  def last_comments(id)
    Post.find_by(id: id).comments.last(5)
  end
end
