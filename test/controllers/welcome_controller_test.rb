require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get registered" do
    get :registered
    assert_response :success
  end

end
