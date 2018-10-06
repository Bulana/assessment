require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get join_us" do
    get pages_join_us_url
    assert_response :success
  end

  test "should get support" do
    get pages_support_url
    assert_response :success
  end

  test "should get news" do
    get pages_news_url
    assert_response :success
  end

  test "should get login_or_register" do
    get pages_login_or_register_url
    assert_response :success
  end

  test "should get exchange" do
    get pages_exchange_url
    assert_response :success
  end

end
