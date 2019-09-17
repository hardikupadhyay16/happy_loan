require 'test_helper'

class EmpRequisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp_requisition = emp_requisitions(:one)
  end

  test "should get index" do
    get emp_requisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_requisition_url
    assert_response :success
  end

  test "should create emp_requisition" do
    assert_difference('EmpRequisition.count') do
      post emp_requisitions_url, params: { emp_requisition: {  } }
    end

    assert_redirected_to emp_requisition_url(EmpRequisition.last)
  end

  test "should show emp_requisition" do
    get emp_requisition_url(@emp_requisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_requisition_url(@emp_requisition)
    assert_response :success
  end

  test "should update emp_requisition" do
    patch emp_requisition_url(@emp_requisition), params: { emp_requisition: {  } }
    assert_redirected_to emp_requisition_url(@emp_requisition)
  end

  test "should destroy emp_requisition" do
    assert_difference('EmpRequisition.count', -1) do
      delete emp_requisition_url(@emp_requisition)
    end

    assert_redirected_to emp_requisitions_url
  end
end
