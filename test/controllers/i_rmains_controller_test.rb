require 'test_helper'

class IRmainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_rmain = i_rmains(:one)
  end

  test "should get index" do
    get i_rmains_url
    assert_response :success
  end

  test "should get new" do
    get new_i_rmain_url
    assert_response :success
  end

  test "should create i_rmain" do
    assert_difference('IRmain.count') do
      post i_rmains_url, params: { i_rmain: { ir_date: @i_rmain.ir_date, ir_file: @i_rmain.ir_file, title: @i_rmain.title } }
    end

    assert_redirected_to i_rmain_url(IRmain.last)
  end

  test "should show i_rmain" do
    get i_rmain_url(@i_rmain)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_rmain_url(@i_rmain)
    assert_response :success
  end

  test "should update i_rmain" do
    patch i_rmain_url(@i_rmain), params: { i_rmain: { ir_date: @i_rmain.ir_date, ir_file: @i_rmain.ir_file, title: @i_rmain.title } }
    assert_redirected_to i_rmain_url(@i_rmain)
  end

  test "should destroy i_rmain" do
    assert_difference('IRmain.count', -1) do
      delete i_rmain_url(@i_rmain)
    end

    assert_redirected_to i_rmains_url
  end
end
