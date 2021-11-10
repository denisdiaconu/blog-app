require 'rails_helper'

RSpec.describe UsersController, type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Cork', email: 'example@mail.com', password: 'password', photo: 'www.google.com') }
describe 'GET #index' do
    before do
      sign_in user
      get users_path
    end
    it 'should have response status correct(ok)' do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end
end