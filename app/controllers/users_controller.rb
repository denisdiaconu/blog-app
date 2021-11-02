class UsersController < ApplicationController
  def index
    @users = [
      {
        name: 'Giuseppe',
        photo: 'https://images-na.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX384_BO1,204,203,200_.jpg',
        bio: 'Did my opinion offend you? You should hear the ones I don’t say out loud.',
        postsCounter: 2
      },
      {
        name: 'Marco',
        photo: 'https://images-na.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX384_BO1,204,203,200_.jpg',
        bio: 'A bus station is where a bus stops. A train station is where a train stops.',
        postsCounter: 1
      },
      {
        name: 'Simon',
        photo: 'https://images-na.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX384_BO1,204,203,200_.jpg',
        bio: 'Born at a very young age.',
        postsCounter: 2
      }
    ]
  end

  # rubocop:disable Metrics/MethodLength
  def show
    @user =
      {
        name: 'Giuseppe',
        photo: 'https://images-na.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX384_BO1,204,203,200_.jpg',
        bio: 'Did my opinion offend you? You should hear the ones I don’t say out loud.',
        postsCounter: 2
      }
    @posts = [
      {
        title: 'post 1',
        text: 'this is post content'
      },
      {
        title: 'post 2',
        text: 'this is post content'
      },
      {
        title: 'post 3',
        text: 'this is post content'
      }
    ]
  end
  # rubocop:enable Metrics/MethodLength
end
