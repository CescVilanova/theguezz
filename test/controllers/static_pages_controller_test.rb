require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get rules" do
    get :rules
    assert_response :success
  end

  test "should get layout_predictions_public" do
    get :layout_predictions_public
    assert_response :success
  end

  test "should get layout_predictions_admin" do
    get :layout_predictions_admin
    assert_response :success
  end

end
