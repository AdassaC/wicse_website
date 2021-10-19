require "test_helper"

class UserFindSchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_find_school_index_url
    assert_response :success
  end
end
