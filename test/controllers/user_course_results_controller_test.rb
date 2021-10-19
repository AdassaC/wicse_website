require "test_helper"

class UserCourseResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_course_results_index_url
    assert_response :success
  end
end
