require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_index_url
    assert_response :success
  end

  test "should get add" do
    get employee_add_url
    assert_response :success
  end

  test "should get edit" do
    get employee_edit_url
    assert_response :success
  end

end
