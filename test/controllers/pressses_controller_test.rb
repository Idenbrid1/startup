require 'test_helper'

class PresssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presss = pressses(:one)
  end

  test "should get index" do
    get pressses_url
    assert_response :success
  end

  test "should get new" do
    get new_presss_url
    assert_response :success
  end

  test "should create presss" do
    assert_difference('Presss.count') do
      post pressses_url, params: { presss: { body: @presss.body, press_date: @presss.press_date, title: @presss.title } }
    end

    assert_redirected_to presss_url(Presss.last)
  end

  test "should show presss" do
    get presss_url(@presss)
    assert_response :success
  end

  test "should get edit" do
    get edit_presss_url(@presss)
    assert_response :success
  end

  test "should update presss" do
    patch presss_url(@presss), params: { presss: { body: @presss.body, press_date: @presss.press_date, title: @presss.title } }
    assert_redirected_to presss_url(@presss)
  end

  test "should destroy presss" do
    assert_difference('Presss.count', -1) do
      delete presss_url(@presss)
    end

    assert_redirected_to pressses_url
  end
end
