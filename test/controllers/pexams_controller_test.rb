require 'test_helper'

class PexamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pexam = pexams(:one)
  end

  test "should get index" do
    get pexams_url
    assert_response :success
  end

  test "should get new" do
    get new_pexam_url
    assert_response :success
  end

  test "should create pexam" do
    assert_difference('Pexam.count') do
      post pexams_url, params: { pexam: { english_dev_16_1: @pexam.english_dev_16_1, english_dev_16_2: @pexam.english_dev_16_2, english_dev_16_3: @pexam.english_dev_16_3, english_dev_16_4: @pexam.english_dev_16_4, english_score_16_1: @pexam.english_score_16_1, english_score_16_2: @pexam.english_score_16_2, english_score_16_3: @pexam.english_score_16_3, english_score_16_4: @pexam.english_score_16_4, genbun_dev_16_1: @pexam.genbun_dev_16_1, genbun_dev_16_2: @pexam.genbun_dev_16_2, genbun_dev_16_3: @pexam.genbun_dev_16_3, genbun_score_16_1: @pexam.genbun_score_16_1, genbun_score_16_2: @pexam.genbun_score_16_2, genbun_score_16_3: @pexam.genbun_score_16_3, kanbun_dev_16_1: @pexam.kanbun_dev_16_1, kanbun_dev_16_2: @pexam.kanbun_dev_16_2, kanbun_dev_16_3: @pexam.kanbun_dev_16_3, kanbun_dev_16_4: @pexam.kanbun_dev_16_4, kanbun_score_16_1: @pexam.kanbun_score_16_1, kanbun_score_16_2: @pexam.kanbun_score_16_2, kanbun_score_16_3: @pexam.kanbun_score_16_3, kanbun_score_16_4: @pexam.kanbun_score_16_4, kobun_dev_16_1: @pexam.kobun_dev_16_1, kobun_dev_16_2: @pexam.kobun_dev_16_2, kobun_dev_16_3: @pexam.kobun_dev_16_3, kobun_dev_16_4: @pexam.kobun_dev_16_4, kobun_dev_16_4: @pexam.kobun_dev_16_4, kobun_score_16_1: @pexam.kobun_score_16_1, kobun_score_16_2: @pexam.kobun_score_16_2, kobun_score_16_3: @pexam.kobun_score_16_3, kobun_score_16_4: @pexam.kobun_score_16_4, kobun_score_16_4: @pexam.kobun_score_16_4, math1_dev_16_1: @pexam.math1_dev_16_1, math1_dev_16_2: @pexam.math1_dev_16_2, math1_dev_16_3: @pexam.math1_dev_16_3, math1_dev_16_4: @pexam.math1_dev_16_4, math1_score_16_1: @pexam.math1_score_16_1, math1_score_16_2: @pexam.math1_score_16_2, math1_score_16_3: @pexam.math1_score_16_3, math1_score_16_4: @pexam.math1_score_16_4, math2_dev_16_1: @pexam.math2_dev_16_1, math2_dev_16_2: @pexam.math2_dev_16_2, math2_dev_16_3: @pexam.math2_dev_16_3, math2_dev_16_4: @pexam.math2_dev_16_4, math2_score_16_1: @pexam.math2_score_16_1, math2_score_16_2: @pexam.math2_score_16_2, math2_score_16_3: @pexam.math2_score_16_3, math2_score_16_4: @pexam.math2_score_16_4, student_name: @pexam.student_name } }
    end

    assert_redirected_to pexam_url(Pexam.last)
  end

  test "should show pexam" do
    get pexam_url(@pexam)
    assert_response :success
  end

  test "should get edit" do
    get edit_pexam_url(@pexam)
    assert_response :success
  end

  test "should update pexam" do
    patch pexam_url(@pexam), params: { pexam: { english_dev_16_1: @pexam.english_dev_16_1, english_dev_16_2: @pexam.english_dev_16_2, english_dev_16_3: @pexam.english_dev_16_3, english_dev_16_4: @pexam.english_dev_16_4, english_score_16_1: @pexam.english_score_16_1, english_score_16_2: @pexam.english_score_16_2, english_score_16_3: @pexam.english_score_16_3, english_score_16_4: @pexam.english_score_16_4, genbun_dev_16_1: @pexam.genbun_dev_16_1, genbun_dev_16_2: @pexam.genbun_dev_16_2, genbun_dev_16_3: @pexam.genbun_dev_16_3, genbun_score_16_1: @pexam.genbun_score_16_1, genbun_score_16_2: @pexam.genbun_score_16_2, genbun_score_16_3: @pexam.genbun_score_16_3, kanbun_dev_16_1: @pexam.kanbun_dev_16_1, kanbun_dev_16_2: @pexam.kanbun_dev_16_2, kanbun_dev_16_3: @pexam.kanbun_dev_16_3, kanbun_dev_16_4: @pexam.kanbun_dev_16_4, kanbun_score_16_1: @pexam.kanbun_score_16_1, kanbun_score_16_2: @pexam.kanbun_score_16_2, kanbun_score_16_3: @pexam.kanbun_score_16_3, kanbun_score_16_4: @pexam.kanbun_score_16_4, kobun_dev_16_1: @pexam.kobun_dev_16_1, kobun_dev_16_2: @pexam.kobun_dev_16_2, kobun_dev_16_3: @pexam.kobun_dev_16_3, kobun_dev_16_4: @pexam.kobun_dev_16_4, kobun_dev_16_4: @pexam.kobun_dev_16_4, kobun_score_16_1: @pexam.kobun_score_16_1, kobun_score_16_2: @pexam.kobun_score_16_2, kobun_score_16_3: @pexam.kobun_score_16_3, kobun_score_16_4: @pexam.kobun_score_16_4, kobun_score_16_4: @pexam.kobun_score_16_4, math1_dev_16_1: @pexam.math1_dev_16_1, math1_dev_16_2: @pexam.math1_dev_16_2, math1_dev_16_3: @pexam.math1_dev_16_3, math1_dev_16_4: @pexam.math1_dev_16_4, math1_score_16_1: @pexam.math1_score_16_1, math1_score_16_2: @pexam.math1_score_16_2, math1_score_16_3: @pexam.math1_score_16_3, math1_score_16_4: @pexam.math1_score_16_4, math2_dev_16_1: @pexam.math2_dev_16_1, math2_dev_16_2: @pexam.math2_dev_16_2, math2_dev_16_3: @pexam.math2_dev_16_3, math2_dev_16_4: @pexam.math2_dev_16_4, math2_score_16_1: @pexam.math2_score_16_1, math2_score_16_2: @pexam.math2_score_16_2, math2_score_16_3: @pexam.math2_score_16_3, math2_score_16_4: @pexam.math2_score_16_4, student_name: @pexam.student_name } }
    assert_redirected_to pexam_url(@pexam)
  end

  test "should destroy pexam" do
    assert_difference('Pexam.count', -1) do
      delete pexam_url(@pexam)
    end

    assert_redirected_to pexams_url
  end
end
