require 'test_helper'

class StartupControllerTest < ActionController::TestCase
  test "should get busqueda" do
    get :busqueda
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
