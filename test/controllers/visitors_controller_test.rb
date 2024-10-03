require "test_helper"

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visitors_index_url
    assert_response :success
  end

  test "should get faq" do
    get visitors_faq_url
    assert_response :success
  end

  test "should get acerca_de" do
    get visitors_acerca_de_url
    assert_response :success
  end
end
