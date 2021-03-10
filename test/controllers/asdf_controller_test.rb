require "test_helper"

class AsdfControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get asdf_new_url
    assert_response :success
  end
end
