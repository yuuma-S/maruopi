require 'test_helper'

class EndUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get end_users_index_url
    assert_response :success
  end

  test "should get new" do
    get end_users_new_url
    assert_response :success
  end

  test "should get create" do
    get end_users_create_url
    assert_response :success
  end

  test "should get edit" do
    get end_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get end_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get end_users_destroy_url
    assert_response :success
  end

end
