require 'test_helper'

class ExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam = exams(:one)
  end

  test "should get index" do
    get exams_url
    assert_response :success
  end

  test "should get new" do
    get new_exam_url
    assert_response :success
  end

  test "should create exam" do
    assert_difference('Exam.count') do
      post exams_url, params: { exam: { english_dev_16_1: @exam.english_dev_16_1, english_dev_16_2: @exam.english_dev_16_2, english_dev_16_3: @exam.english_dev_16_3, english_dev_16_4: @exam.english_dev_16_4, english_score_16_1: @exam.english_score_16_1, english_score_16_2: @exam.english_score_16_2, english_score_16_3: @exam.english_score_16_3, english_score_16_4: @exam.english_score_16_4, genbun_dev_16_1: @exam.genbun_dev_16_1, genbun_dev_16_2: @exam.genbun_dev_16_2, genbun_dev_16_3: @exam.genbun_dev_16_3, genbun_score_16_1: @exam.genbun_score_16_1, genbun_score_16_2: @exam.genbun_score_16_2, genbun_score_16_3: @exam.genbun_score_16_3, kanbun_dev_16_1: @exam.kanbun_dev_16_1, kanbun_dev_16_2: @exam.kanbun_dev_16_2, kanbun_dev_16_3: @exam.kanbun_dev_16_3, kanbun_dev_16_4: @exam.kanbun_dev_16_4, kanbun_score_16_1: @exam.kanbun_score_16_1, kanbun_score_16_2: @exam.kanbun_score_16_2, kanbun_score_16_3: @exam.kanbun_score_16_3, kanbun_score_16_4: @exam.kanbun_score_16_4, kobun_dev_16_1: @exam.kobun_dev_16_1, kobun_dev_16_2: @exam.kobun_dev_16_2, kobun_dev_16_3: @exam.kobun_dev_16_3, kobun_dev_16_4: @exam.kobun_dev_16_4, kobun_dev_16_4: @exam.kobun_dev_16_4, kobun_score_16_1: @exam.kobun_score_16_1, kobun_score_16_2: @exam.kobun_score_16_2, kobun_score_16_3: @exam.kobun_score_16_3, kobun_score_16_4: @exam.kobun_score_16_4, kobun_score_16_4: @exam.kobun_score_16_4, math1_dev_16_1: @exam.math1_dev_16_1, math1_dev_16_2: @exam.math1_dev_16_2, math1_dev_16_3: @exam.math1_dev_16_3, math1_dev_16_4: @exam.math1_dev_16_4, math1_score_16_1: @exam.math1_score_16_1, math1_score_16_2: @exam.math1_score_16_2, math1_score_16_3: @exam.math1_score_16_3, math1_score_16_4: @exam.math1_score_16_4, math2_dev_16_1: @exam.math2_dev_16_1, math2_dev_16_2: @exam.math2_dev_16_2, math2_dev_16_3: @exam.math2_dev_16_3, math2_dev_16_4: @exam.math2_dev_16_4, math2_score_16_1: @exam.math2_score_16_1, math2_score_16_2: @exam.math2_score_16_2, math2_score_16_3: @exam.math2_score_16_3, math2_score_16_4: @exam.math2_score_16_4, student_name: @exam.student_name } }
    end

    assert_redirected_to exam_url(Exam.last)
  end

  test "should show exam" do
    get exam_url(@exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_exam_url(@exam)
    assert_response :success
  end

  test "should update exam" do
    patch exam_url(@exam), params: { exam: { english_dev_16_1: @exam.english_dev_16_1, english_dev_16_2: @exam.english_dev_16_2, english_dev_16_3: @exam.english_dev_16_3, english_dev_16_4: @exam.english_dev_16_4, english_score_16_1: @exam.english_score_16_1, english_score_16_2: @exam.english_score_16_2, english_score_16_3: @exam.english_score_16_3, english_score_16_4: @exam.english_score_16_4, genbun_dev_16_1: @exam.genbun_dev_16_1, genbun_dev_16_2: @exam.genbun_dev_16_2, genbun_dev_16_3: @exam.genbun_dev_16_3, genbun_score_16_1: @exam.genbun_score_16_1, genbun_score_16_2: @exam.genbun_score_16_2, genbun_score_16_3: @exam.genbun_score_16_3, kanbun_dev_16_1: @exam.kanbun_dev_16_1, kanbun_dev_16_2: @exam.kanbun_dev_16_2, kanbun_dev_16_3: @exam.kanbun_dev_16_3, kanbun_dev_16_4: @exam.kanbun_dev_16_4, kanbun_score_16_1: @exam.kanbun_score_16_1, kanbun_score_16_2: @exam.kanbun_score_16_2, kanbun_score_16_3: @exam.kanbun_score_16_3, kanbun_score_16_4: @exam.kanbun_score_16_4, kobun_dev_16_1: @exam.kobun_dev_16_1, kobun_dev_16_2: @exam.kobun_dev_16_2, kobun_dev_16_3: @exam.kobun_dev_16_3, kobun_dev_16_4: @exam.kobun_dev_16_4, kobun_dev_16_4: @exam.kobun_dev_16_4, kobun_score_16_1: @exam.kobun_score_16_1, kobun_score_16_2: @exam.kobun_score_16_2, kobun_score_16_3: @exam.kobun_score_16_3, kobun_score_16_4: @exam.kobun_score_16_4, kobun_score_16_4: @exam.kobun_score_16_4, math1_dev_16_1: @exam.math1_dev_16_1, math1_dev_16_2: @exam.math1_dev_16_2, math1_dev_16_3: @exam.math1_dev_16_3, math1_dev_16_4: @exam.math1_dev_16_4, math1_score_16_1: @exam.math1_score_16_1, math1_score_16_2: @exam.math1_score_16_2, math1_score_16_3: @exam.math1_score_16_3, math1_score_16_4: @exam.math1_score_16_4, math2_dev_16_1: @exam.math2_dev_16_1, math2_dev_16_2: @exam.math2_dev_16_2, math2_dev_16_3: @exam.math2_dev_16_3, math2_dev_16_4: @exam.math2_dev_16_4, math2_score_16_1: @exam.math2_score_16_1, math2_score_16_2: @exam.math2_score_16_2, math2_score_16_3: @exam.math2_score_16_3, math2_score_16_4: @exam.math2_score_16_4, student_name: @exam.student_name } }
    assert_redirected_to exam_url(@exam)
  end

  test "should destroy exam" do
    assert_difference('Exam.count', -1) do
      delete exam_url(@exam)
    end

    assert_redirected_to exams_url
  end
end
