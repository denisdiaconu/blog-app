require 'rails_helper'

RSpec.describe PostsController, type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Cork', email: 'example@mail.com', password: 'password') }
end
