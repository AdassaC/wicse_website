require "test_helper"

class WriteReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get write_review_index_url
    assert_response :success
  end
end
