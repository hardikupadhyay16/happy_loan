require "application_system_test_case"

class EmpRequisitionsTest < ApplicationSystemTestCase
  setup do
    @emp_requisition = emp_requisitions(:one)
  end

  test "visiting the index" do
    visit emp_requisitions_url
    assert_selector "h1", text: "Emp Requisitions"
  end

  test "creating a Emp requisition" do
    visit emp_requisitions_url
    click_on "New Emp Requisition"

    click_on "Create Emp requisition"

    assert_text "Emp requisition was successfully created"
    click_on "Back"
  end

  test "updating a Emp requisition" do
    visit emp_requisitions_url
    click_on "Edit", match: :first

    click_on "Update Emp requisition"

    assert_text "Emp requisition was successfully updated"
    click_on "Back"
  end

  test "destroying a Emp requisition" do
    visit emp_requisitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emp requisition was successfully destroyed"
  end
end
