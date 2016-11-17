require 'test_helper'

class WintersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winter = winters(:one)
  end

  test "should get index" do
    get winters_url
    assert_response :success
  end

  test "should get new" do
    get new_winter_url
    assert_response :success
  end

  test "should create winter" do
    assert_difference('Winter.count') do
      post winters_url, params: { winter: { fri: @winter.fri, mon: @winter.mon, sat: @winter.sat, sun: @winter.sun, thr: @winter.thr, tue: @winter.tue, wed: @winter.wed } }
    end

    assert_redirected_to winter_url(Winter.last)
  end

  test "should show winter" do
    get winter_url(@winter)
    assert_response :success
  end

  test "should get edit" do
    get edit_winter_url(@winter)
    assert_response :success
  end

  test "should update winter" do
    patch winter_url(@winter), params: { winter: { fri: @winter.fri, mon: @winter.mon, sat: @winter.sat, sun: @winter.sun, thr: @winter.thr, tue: @winter.tue, wed: @winter.wed } }
    assert_redirected_to winter_url(@winter)
  end

  test "should destroy winter" do
    assert_difference('Winter.count', -1) do
      delete winter_url(@winter)
    end

    assert_redirected_to winters_url
  end
end
