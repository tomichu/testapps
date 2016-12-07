require 'test_helper'

class NecessaryStudyTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @necessary_study_time = necessary_study_times(:one)
  end

  test "should get index" do
    get necessary_study_times_url
    assert_response :success
  end

  test "should get new" do
    get new_necessary_study_time_url
    assert_response :success
  end

  test "should create necessary_study_time" do
    assert_difference('NecessaryStudyTime.count') do
      post necessary_study_times_url, params: { necessary_study_time: { classic_ct: @necessary_study_time.classic_ct, classic_lec: @necessary_study_time.classic_lec, english_ct: @necessary_study_time.english_ct, english_lec: @necessary_study_time.english_lec, japanese_ct: @necessary_study_time.japanese_ct, japanese_lec: @necessary_study_time.japanese_lec, math_ct: @necessary_study_time.math_ct, math_lec: @necessary_study_time.math_lec, title: @necessary_study_time.title } }
    end

    assert_redirected_to necessary_study_time_url(NecessaryStudyTime.last)
  end

  test "should show necessary_study_time" do
    get necessary_study_time_url(@necessary_study_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_necessary_study_time_url(@necessary_study_time)
    assert_response :success
  end

  test "should update necessary_study_time" do
    patch necessary_study_time_url(@necessary_study_time), params: { necessary_study_time: { classic_ct: @necessary_study_time.classic_ct, classic_lec: @necessary_study_time.classic_lec, english_ct: @necessary_study_time.english_ct, english_lec: @necessary_study_time.english_lec, japanese_ct: @necessary_study_time.japanese_ct, japanese_lec: @necessary_study_time.japanese_lec, math_ct: @necessary_study_time.math_ct, math_lec: @necessary_study_time.math_lec, title: @necessary_study_time.title } }
    assert_redirected_to necessary_study_time_url(@necessary_study_time)
  end

  test "should destroy necessary_study_time" do
    assert_difference('NecessaryStudyTime.count', -1) do
      delete necessary_study_time_url(@necessary_study_time)
    end

    assert_redirected_to necessary_study_times_url
  end
end
