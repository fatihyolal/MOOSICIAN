require "test_helper"

class GlobalsearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get globalsearch_search_url
    assert_response :success
  end
end
