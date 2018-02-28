require 'test_helper'

class FunctionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get function_index_url
    assert_response :success
  end

  test "should get add" do
    get function_add_url
    assert_response :success
  end

  test "should get edit" do
    get function_edit_url
    assert_response :success
  end

end
