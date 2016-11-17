require 'test_helper'

class StudentMemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_memo = student_memos(:one)
  end

  test "should get index" do
    get student_memos_url
    assert_response :success
  end

  test "should get new" do
    get new_student_memo_url
    assert_response :success
  end

  test "should create student_memo" do
    assert_difference('StudentMemo.count') do
      post student_memos_url, params: { student_memo: { created_at: @student_memo.created_at, ennea: @student_memo.ennea, going_school: @student_memo.going_school, record: @student_memo.record, textbook: @student_memo.textbook, title: @student_memo.title, updated_at: @student_memo.updated_at } }
    end

    assert_redirected_to student_memo_url(StudentMemo.last)
  end

  test "should show student_memo" do
    get student_memo_url(@student_memo)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_memo_url(@student_memo)
    assert_response :success
  end

  test "should update student_memo" do
    patch student_memo_url(@student_memo), params: { student_memo: { created_at: @student_memo.created_at, ennea: @student_memo.ennea, going_school: @student_memo.going_school, record: @student_memo.record, textbook: @student_memo.textbook, title: @student_memo.title, updated_at: @student_memo.updated_at } }
    assert_redirected_to student_memo_url(@student_memo)
  end

  test "should destroy student_memo" do
    assert_difference('StudentMemo.count', -1) do
      delete student_memo_url(@student_memo)
    end

    assert_redirected_to student_memos_url
  end
end
