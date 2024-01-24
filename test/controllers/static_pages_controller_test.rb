require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get legal" do
    get static_pages_legal_url
    assert_response :success
  end

  test "should get terms_of_service" do
    get static_pages_terms_of_service_url
    assert_response :success
  end

  test "should get privacy" do
    get static_pages_privacy_url
    assert_response :success
  end
end
