require 'test_helper'

class Test1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test1_index_url
    assert_response :success
  end

  test "should get new" do
    get test1_new_url
    assert_response :success
  end

  test "should get show" do
    get test1_show_url
    assert_response :success
  end

  test "should get create" do
    get test1_create_url
    assert_response :success
  end

  test "should get update" do
    get test1_update_url
    assert_response :success
  end

  test "should get edit" do
    get test1_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get test1_destroy_url
    assert_response :success
  end

end
