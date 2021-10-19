require "test_helper"

class CourseResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get course_results_index_url
    assert_response :success
  end
end
