require "application_system_test_case"

class RepresentatorsTest < ApplicationSystemTestCase
  setup do
    @representator = representators(:one)
  end

  test "visiting the index" do
    visit representators_url
    assert_selector "h1", text: "Representators"
  end

  test "creating a Representator" do
    visit representators_url
    click_on "New Representator"

    fill_in "Address", with: @representator.address
    fill_in "Name", with: @representator.name
    fill_in "Tel", with: @representator.tel
    click_on "Create Representator"

    assert_text "Representator was successfully created"
    click_on "Back"
  end

  test "updating a Representator" do
    visit representators_url
    click_on "Edit", match: :first

    fill_in "Address", with: @representator.address
    fill_in "Name", with: @representator.name
    fill_in "Tel", with: @representator.tel
    click_on "Update Representator"

    assert_text "Representator was successfully updated"
    click_on "Back"
  end

  test "destroying a Representator" do
    visit representators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Representator was successfully destroyed"
  end
end
