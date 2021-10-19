require "test_helper"

class TrendingCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trending_courses_index_url
    assert_response :success
  end
end
