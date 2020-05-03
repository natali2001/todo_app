require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get registration" do
    get static_pages_registration_url
    assert_response :success
  end

end
