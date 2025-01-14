require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.first
  end

  test "should get index" do
    log_in_as(@user)
    get root_url
    assert_response :success
  end
end
