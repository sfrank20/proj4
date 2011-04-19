require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get sadmin" do
    get :sadmin
    assert_response :success
  end

  test "should get qadmin" do
    get :qadmin
    assert_response :success
  end

  test "should get take" do
    get :take
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
