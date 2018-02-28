require 'test_helper'

class DepartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get department_index_url
    assert_response :success
  end

  test "should get add" do
    get department_add_url
    assert_response :success
  end

  test "should get edit" do
    get department_edit_url
    assert_response :success
  end

end
