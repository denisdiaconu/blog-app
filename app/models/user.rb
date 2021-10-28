class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, :phots, :bio, :postsCounter, presence: true
  validates_length_of :name, length: { minimum: 3, maximum: 25 }
  validates :bio, length: { maximum: 350 }
end
