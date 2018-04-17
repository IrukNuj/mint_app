require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get nanika" do
    get test_nanika_url
    assert_response :success
  end

end
