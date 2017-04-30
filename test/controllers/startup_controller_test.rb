require 'test_helper'

class StartupControllerTest < ActionController::TestCase
  test "should get inicioSesion" do
    get :inicioSesion
    assert_response :success
  end

end
