class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, :photo, :bio, :postsCounter, presence: true
  validates :postsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def last_posts(id)
    User.find_by(id: id).posts.last(3)
  end
end
