require 'test_helper'

class RightwidgetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rightwidget = rightwidgets(:one)
  end

  test "should get index" do
    get rightwidgets_url
    assert_response :success
  end

  test "should get new" do
    get new_rightwidget_url
    assert_response :success
  end

  test "should create rightwidget" do
    assert_difference('Rightwidget.count') do
      post rightwidgets_url, params: { rightwidget: { content: @rightwidget.content, title: @rightwidget.title, url: @rightwidget.url } }
    end

    assert_redirected_to rightwidget_url(Rightwidget.last)
  end

  test "should show rightwidget" do
    get rightwidget_url(@rightwidget)
    assert_response :success
  end

  test "should get edit" do
    get edit_rightwidget_url(@rightwidget)
    assert_response :success
  end

  test "should update rightwidget" do
    patch rightwidget_url(@rightwidget), params: { rightwidget: { content: @rightwidget.content, title: @rightwidget.title, url: @rightwidget.url } }
    assert_redirected_to rightwidget_url(@rightwidget)
  end

  test "should destroy rightwidget" do
    assert_difference('Rightwidget.count', -1) do
      delete rightwidget_url(@rightwidget)
    end

    assert_redirected_to rightwidgets_url
  end
end
