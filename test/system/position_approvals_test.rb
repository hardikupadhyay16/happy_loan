require "application_system_test_case"

class PositionApprovalsTest < ApplicationSystemTestCase
  setup do
    @position_approval = position_approvals(:one)
  end

  test "visiting the index" do
    visit position_approvals_url
    assert_selector "h1", text: "Position Approvals"
  end

  test "creating a Position approval" do
    visit position_approvals_url
    click_on "New Position Approval"

    click_on "Create Position approval"

    assert_text "Position approval was successfully created"
    click_on "Back"
  end

  test "updating a Position approval" do
    visit position_approvals_url
    click_on "Edit", match: :first

    click_on "Update Position approval"

    assert_text "Position approval was successfully updated"
    click_on "Back"
  end

  test "destroying a Position approval" do
    visit position_approvals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Position approval was successfully destroyed"
  end
end
