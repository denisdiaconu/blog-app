class PostsController < ApplicationController
  # rubocop:disable Metrics/MethodLength
  def index
    @user_id = params[:user_id]
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
        text: 'this is post content',
        comments: [
          {
            text: 'hello world'
          },
          {
            text: 'hello world 2'
          },
          {
            text: 'hello world 3'
          }
        ]
      },
      {
        title: 'post 2',
        text: 'this is post content',
        comments: [
          {
            text: 'hello world'
          },
          {
            text: 'hello world 2'
          },
          {
            text: 'hello world 3'
          }
        ]
      },
      {
        title: 'post 3',
        text: 'this is post content',
        comments: [
          {
            text: 'hello world'
          },
          {
            text: 'hello world 2'
          },
          {
            text: 'hello world 3'
          }
        ]
      }
    ]
  end
  # rubocop:enable Metrics/MethodLength

  def show
    @id = params[:id]
    @user_id = params[:user_id]
    @post = {
      title: 'post 1',
      text: 'this is post content',
      comments: [
        {
          text: 'hello world'
        },
        {
          text: 'hello world 2'
        },
        {
          text: 'hello world 3'
        }
      ]
    }
  end
end
