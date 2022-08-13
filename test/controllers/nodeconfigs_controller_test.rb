require "test_helper"

class NodeconfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nodeconfigs_index_url
    assert_response :success
  end
end
