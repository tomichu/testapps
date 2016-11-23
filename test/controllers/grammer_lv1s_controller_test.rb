require 'test_helper'

class GrammerLv1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grammer_lv1 = grammer_lv1s(:one)
  end

  test "should get index" do
    get grammer_lv1s_url
    assert_response :success
  end

  test "should get new" do
    get new_grammer_lv1_url
    assert_response :success
  end

  test "should create grammer_lv1" do
    assert_difference('GrammerLv1.count') do
      post grammer_lv1s_url, params: { grammer_lv1: { q1: @grammer_lv1.q1, q2: @grammer_lv1.q2, q3: @grammer_lv1.q3, q4: @grammer_lv1.q4, q5: @grammer_lv1.q5 } }
    end

    assert_redirected_to grammer_lv1_url(GrammerLv1.last)
  end

  test "should show grammer_lv1" do
    get grammer_lv1_url(@grammer_lv1)
    assert_response :success
  end

  test "should get edit" do
    get edit_grammer_lv1_url(@grammer_lv1)
    assert_response :success
  end

  test "should update grammer_lv1" do
    patch grammer_lv1_url(@grammer_lv1), params: { grammer_lv1: { q1: @grammer_lv1.q1, q2: @grammer_lv1.q2, q3: @grammer_lv1.q3, q4: @grammer_lv1.q4, q5: @grammer_lv1.q5 } }
    assert_redirected_to grammer_lv1_url(@grammer_lv1)
  end

  test "should destroy grammer_lv1" do
    assert_difference('GrammerLv1.count', -1) do
      delete grammer_lv1_url(@grammer_lv1)
    end

    assert_redirected_to grammer_lv1s_url
  end
end
