require 'test_helper'

class MahjongCourseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mahjong_course_index_url
    assert_response :success
  end

end
