require 'test_helper'

class Admin::QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_question_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_question_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_question_destroy_url
    assert_response :success
  end

end
