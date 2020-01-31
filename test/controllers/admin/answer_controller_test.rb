require 'test_helper'

class Admin::AnswerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_answer_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_answer_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_answer_destroy_url
    assert_response :success
  end

end
