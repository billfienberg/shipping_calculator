require 'test_helper'

class OriginsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get origin" do
    get :origin
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
