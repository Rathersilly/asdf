require "application_system_test_case"

class SitsTest < ApplicationSystemTestCase
  setup do
    @sit = sits(:one)
  end

  test "visiting the index" do
    visit sits_url
    assert_selector "h1", text: "Sits"
  end

  test "creating a Sit" do
    visit sits_url
    click_on "New Sit"

    click_on "Create Sit"

    assert_text "Sit was successfully created"
    click_on "Back"
  end

  test "updating a Sit" do
    visit sits_url
    click_on "Edit", match: :first

    click_on "Update Sit"

    assert_text "Sit was successfully updated"
    click_on "Back"
  end

  test "destroying a Sit" do
    visit sits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sit was successfully destroyed"
  end
end
