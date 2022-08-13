require "test_helper"

class GenieacsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genieacs_index_url
    assert_response :success
  end
end
