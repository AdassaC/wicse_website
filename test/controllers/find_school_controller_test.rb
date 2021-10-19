require "test_helper"

class FindSchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get find_school_index_url
    assert_response :success
  end
end
