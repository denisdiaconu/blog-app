class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, :photo, :bio, :postsCounter, presence: true
  validates_length_of :name, length: { minimum: 3, maximum: 25 }
  validates :bio, length: { maximum: 350 }

  def last_posts(id)
    User.find_by(id: id).posts.last(3)
  end
end
