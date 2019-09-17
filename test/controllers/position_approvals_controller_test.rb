require 'test_helper'

class PositionApprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_approval = position_approvals(:one)
  end

  test "should get index" do
    get position_approvals_url
    assert_response :success
  end

  test "should get new" do
    get new_position_approval_url
    assert_response :success
  end

  test "should create position_approval" do
    assert_difference('PositionApproval.count') do
      post position_approvals_url, params: { position_approval: {  } }
    end

    assert_redirected_to position_approval_url(PositionApproval.last)
  end

  test "should show position_approval" do
    get position_approval_url(@position_approval)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_approval_url(@position_approval)
    assert_response :success
  end

  test "should update position_approval" do
    patch position_approval_url(@position_approval), params: { position_approval: {  } }
    assert_redirected_to position_approval_url(@position_approval)
  end

  test "should destroy position_approval" do
    assert_difference('PositionApproval.count', -1) do
      delete position_approval_url(@position_approval)
    end

    assert_redirected_to position_approvals_url
  end
end
