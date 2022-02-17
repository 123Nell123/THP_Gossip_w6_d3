require 'test_helper'

class CreditCards3ControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get credit_cards3_open_url
    assert_response :success
  end

end
