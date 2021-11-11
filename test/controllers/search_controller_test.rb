require "test_helper"

class CourseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get courses_index_url
    assert_response :success
  end
end
