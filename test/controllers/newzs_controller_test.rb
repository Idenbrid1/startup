require 'test_helper'

class NewzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newz = newzs(:one)
  end

  test "should get index" do
    get newzs_url
    assert_response :success
  end

  test "should get new" do
    get new_newz_url
    assert_response :success
  end

  test "should create newz" do
    assert_difference('Newz.count') do
      post newzs_url, params: { newz: { body: @newz.body, publish_date: @newz.publish_date, title: @newz.title } }
    end

    assert_redirected_to newz_url(Newz.last)
  end

  test "should show newz" do
    get newz_url(@newz)
    assert_response :success
  end

  test "should get edit" do
    get edit_newz_url(@newz)
    assert_response :success
  end

  test "should update newz" do
    patch newz_url(@newz), params: { newz: { body: @newz.body, publish_date: @newz.publish_date, title: @newz.title } }
    assert_redirected_to newz_url(@newz)
  end

  test "should destroy newz" do
    assert_difference('Newz.count', -1) do
      delete newz_url(@newz)
    end

    assert_redirected_to newzs_url
  end
end
