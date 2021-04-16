require 'test_helper'

class MainanswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mainanswers_new_url
    assert_response :success
  end

end
