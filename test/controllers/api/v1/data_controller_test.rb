require "test_helper"

class Api::V1::DataControllerTest < ActionDispatch::IntegrationTest
  test "should get fetch" do
    get api_v1_data_fetch_url
    assert_response :success
  end
end
