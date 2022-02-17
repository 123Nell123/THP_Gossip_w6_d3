require 'test_helper'

class CreditCards4ControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get credit_cards4_open_url
    assert_response :success
  end

end
