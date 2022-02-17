require 'test_helper'

class CreditCards2ControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get credit_cards2_open_url
    assert_response :success
  end

end
