require 'test_helper'

class MainpostsControllerTest < ActionDispatch::IntegrationTest
  test "should get gakkounew" do
    get mainposts_gakkounew_url
    assert_response :success
  end

end
