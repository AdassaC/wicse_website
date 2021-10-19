require "test_helper"

class FindSchoolResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get find_school_results_index_url
    assert_response :success
  end
end
