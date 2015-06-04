require 'test_helper'
require 'factory_girl_rails'

class UsersControllerTest < ActionController::TestCase


  test "show_dash" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :show, :id => user.id
    assert_response :success
  end

end

