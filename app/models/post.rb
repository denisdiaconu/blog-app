class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  validates :title, :text, presence: true

  def update_post_counter(id)
    user = User.find_by(id: id)
    user.postsCounter += 1
    user.update
  end

  def last_comments(id)
    Post.find_by(id: id).comments.last(5)
  end
end
